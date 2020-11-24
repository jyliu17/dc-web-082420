import manageWords from './manageWords'
import {starterWords} from './starterWords'

describe ('manageWords', () => {
    it ('handles @@INIT', () => {
        let result = manageWords(undefined, {type: "@@INIT"})
        expect(result).toEqual({words: starterWords})
    });
    it ('handles ADD_WORD', () => {
        let mockState = {words: starterWords}
        let mockAction = {
            type: "ADD_WORD",
            payload: {
                name: "fuglen",
                img_url: null
            }
        }
        let result = manageWords(mockState, mockAction)
        expect(result.words.length).toBe(7)
    });
    it ('handles DELETE_WORD', () => {
        let mockState = {words: starterWords}
        let mockAction = {type: "DELETE_WORD", payload: 2}
        let result = manageWords(mockState, mockAction)
        expect(result.words.length).toBe(5)
    });
})