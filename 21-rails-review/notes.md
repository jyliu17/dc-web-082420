- select dropdown / checkbox / radio
- strong params
- validations, displaying error
- custom routes
- form submit and redirect routes
- 



f.collection_select(
    object, :the thing we're building (mission) - left out of a form_for
    method, (attribute of the thing we're building - what we're filling in )        :scientist_id, :planet_id
    collection, what we're choosing from (Scientist.all)
    value_method, (:id)
    text_method: methods on an item of a collection--value for the computer, text for the user (:name)
)