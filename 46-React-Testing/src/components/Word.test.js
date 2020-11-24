import React from 'react'
import Word from './Word'
import {createStore} from 'redux'
import manageWords from '../reducers/manageWords'
import renderer from 'react-test-renderer'

let mockStore = createStore(manageWords)
let mockProps = {
    word: {
        id: 1,
        name: "fuglen",
        img_url: null
    }
}

describe('Word component', () => {
    it('renders a word correctly', () => {
        const tree = renderer.create(<Word {...mockProps} store={mockStore}/>).toJSON()
        expect(tree).toMatchSnapshot()
    })
})