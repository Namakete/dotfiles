local lspconfig = require('lspconfig')

lspconfig.tsserver.setup {
    init_options = {
        preferences = {
            disableSuggestions = true
        },
        typescript = {
            inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true
            }
        },
        javascript = {
            inlayHints = {
                includeInlayParameterNameHints = "all",
                includeInlayParameterNameHintsWhenArgumentMatchesName = false,
                includeInlayFunctionParameterTypeHints = true,
                includeInlayVariableTypeHints = true,
                includeInlayPropertyDeclarationTypeHints = true,
                includeInlayFunctionLikeReturnTypeHints = true,
                includeInlayEnumMemberValueHints = true
            }
        }
    }
}
lspconfig.dartls.setup {
    init_options = {
        closingLabels = true,
        flutterOutline = true,
        onlyAnalyzeOpeningDirectives = true,
        outline = true,
        suggestFromUnimportedLibraries = true
    }
}
lspconfig.eslint.setup {
    codeAction = {
        disableRuleComment = {
            enable = true,
            location = "separateLine"
        },
        showDocumentation = {
            enable = true
        }
    },
    codeActionOnSave = {
        enable = false,
        mode = "all"
    },
    experimental = {
        useFlatConfig = false
    },
    format = true,
    nodePath = "",
    onIgnoredFiles = "off",
    problems = {
        shortenToSingleLine = false
    },
    quiet = false,
    rulesCustomizations = {},
    run = "onType",
    useESLintClass = false,
    validate = "on",
    workingDirectory = {
        mode = "location"
    }

}
