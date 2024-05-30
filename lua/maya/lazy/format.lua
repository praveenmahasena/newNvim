return{
    'sbdchd/neoformat',
    config=function ()
        vim.g.neoformat_try_node_exe = true
        vim.g.neoformat_verbose = true

        vim.g.neoformat_only_msg_on_error = true

        vim.b.neoformat_run_all_formatters = true
        vim.b.neoformat_basic_format_retab =false

        vim.g.neoformat_run_all_formatters = true

        vim.g.neoformat_basic_format_align = true

        vim.g.neoformat_basic_format_retab = true

        vim.g.neoformat_basic_format_trim = true

        vim.g.neoformat_try_formatprg = true

        vim.g.neoformat_python_autopep8 = {
            exe= 'autopep8',
            args= {'-s 4', '-E'},
            replace= true,
            stdin= true,
            env= {"DEBUG=1"},
            valid_exit_codes= {0, 23},
            no_append= true,
        }


        vim.g.neoformat_enabled_python = {'autopep8'}

        -- this one is for prettireSync:PrettierVersion
        --
        vim.g.prettier_autoformat = true
        vim.g.rettier_autoformat_require_pragma = false
        vim.g.prettier_autoformat = true
        vim.g.prettier_autoformat_require_pragma = false
        vim.g.prettier_autoformat_config_present = true
        --[[ vim.g.prettier_autoformat_config_files = [...] ]]
        vim.g.prettier_exec_cmd_async = true
        vim.g.prettier_quickfix_enabled = false
        vim.g.prettier_partial_format=true
        vim.g.prettier_quickfix_auto_focus =false
        vim.g.prettier_config_print_width = 'auto'

        vim.g.prettier_config_tab_width = 'auto'

        vim.g.prettier_config_use_tabs = 'auto'

        vim.g.prettier_config_parser = ''

        vim.g.prettier_config_config_precedence = 'file-override'

        vim.g.prettier_config_prose_wrap = 'preserve'

        vim.g.prettier_config_html_whitespace_sensitivity = 'css'

        vim.g.prettier_config_require_pragma = 'false'
    end
}
