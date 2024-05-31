return{
    'numToStr/FTerm.nvim',
    config=function ()
        vim.keymap.set('n','\\','<CMD>lua require("FTerm").toggle()<CR>',{silent=true,noremap=true})
    end
}
