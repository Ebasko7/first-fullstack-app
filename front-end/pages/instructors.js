const getInstructors = async () => {
    try {
        let insts = await fetch('http://127.0.0.1:8000/api/v1/instructors/')
        if (!insts.ok) {
            throw new Error('Failed to load instructors')
        }
        let response = await insts.json()
        console.log(response)
        return response
    } catch (error) {
        console.error('Error with fetch:', error)
        return []
    }
}

const getImageURL = async () => {
    try {
        let picture = await fetch('https://dog.ceo/api/breeds/image/random')
        let response = await picture.json()
        return response.message
    } catch (error) {
        console.error('Error fetching image:', error)
        return 'default-image-url'
    }
}

const render = async () => {
    const insts = await getInstructors()
    const instructorHolder = document.querySelector('#instructor_holder')

    for (const instructor of insts) {
        let card = document.createElement('div')
        card.className = 'instructor-card'

        let image = document.createElement('img')
        image.src = await getImageURL() 

        let name = document.createElement('h2')
        name.innerText = `${instructor.first_name} ${instructor.last_name}`

        let age = document.createElement('p')
        age.innerText = `Age: ${instructor.age}`

        let description = document.createElement('p')
        description.innerText = instructor.description

        card.appendChild(image)
        card.appendChild(name)
        card.appendChild(age)
        card.appendChild(description)

        instructorHolder.appendChild(card)
    }
}

document.addEventListener('DOMContentLoaded', render)
