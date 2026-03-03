const pool = require ('../config/mySQL')
const getAllProducts = async (requestAnimationFrame, res) => {
    try {
        const [rows] = await pool.query ('SELECT * FROM products')
        res.json(rows)
    } catch (error) {
        console.error(error)
        res.status(500).json({message: 'Error getting products'})
    }
}

module.exports = {
    getAllProducts
}