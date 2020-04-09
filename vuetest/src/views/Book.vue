<template>
    <div>
        <table>
            <tr>
                <td>编号</td>
                <td>图书名称</td>
                <td>作者</td>
            </tr>
            <tr v-for="item in books">
                <td>{{item.id}}</td>
                <td>{{item.name}}</td>
                <td>{{item.author}}</td>
            </tr>
        </table>
    </div>
</template>

<script>
    export default {
        name: "Book",
        data(){
            return{
                msg:'Hello Vue',
                books:[
                {
                    id:1,
                    name:'Java零基础实战',
                    author:'小黎'
                },
                {
                    id:2,
                    name:'Vue零基础实战',
                    author:'小易'
                },
                {
                    id:3,
                    name:'Spring零基础实战',
                    author:'小宇'
                }
                ]

            }
        },
        created() {
            const _this = this
            axios.get('http://localhost:8181/book/findAll').then(function (resp) {
                _this.books = resp.data
            })
        }
    }
</script>

<style scoped>

</style>