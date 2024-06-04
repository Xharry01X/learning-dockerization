import express from "express"
const app=express()

const port=4000;

app.use(express.json())

app.get("/",(req,res)=>{
    res.send("Hii")
})

app.listen(port,()=>{
    console.log(`Server live at ${port}`)
})