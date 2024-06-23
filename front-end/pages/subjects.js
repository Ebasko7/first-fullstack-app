const getSubjects = async () => {
    try {
        let subs = await fetch('http://127.0.0.1:8000/api/v1/subjects/')
        if (!subs.ok) {
            throw new Error('Failed to load subjects')
        }
        let response = await subs.json()
        console.log(response)
        return response
    } catch (error) {
        console.error('Error with fetch:', error)
        return []
    }
}


const render = async () => {
    const subjects = await getSubjects();
    const subjectHolder = document.querySelector('#subject_holder')
    
    subjects.forEach(sub => {
        let card = document.createElement('div')
        card.className = 'subject-card'

        let title = document.createElement('h2')
        title.innerText = sub.title

        let description = document.createElement('p')
        description.innerText = sub.description

        let difficulty = document.createElement('p')
        difficulty.className = 'difficulty'
        difficulty.innerText = `Subject Difficulty: ${sub.difficulty_level}`

        card.appendChild(title)
        card.appendChild(description)
        card.appendChild(difficulty)

        subjectHolder.appendChild(card)
    })
}
document.addEventListener('DOMContentLoaded', render)
