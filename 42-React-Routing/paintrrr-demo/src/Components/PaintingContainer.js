import Painting from './Painting'


const PaintingContainer = ({ paintingData, input, selectPainting }) => {


    let filteredData = paintingData.filter(painting => painting.title.includes(input))

    return (
        <div className="container row">
            {filteredData.map(painting => <Painting selectPainting={selectPainting} paintingData={painting }/>)}
        </div>
    )
}

export default PaintingContainer




