return {
 'L3MON4D3/LuaSnip',
 config = function()

require('luasnip').filetype_extend("javascript", { "javascriptreact" })
require('luasnip').filetype_extend("javascript", { "html" })
-- require('luasnip').filetype_extend("javascript", { "gsap" })

-- temp
  require('luasnip').filetype_extend("lua", { "html" })

local ls = require("luasnip")
local s = ls.snippet
local sn = ls.snippet_node
local isn = ls.indent_snippet_node
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node
local c = ls.choice_node
local d = ls.dynamic_node
local r = ls.restore_node
local events = require("luasnip.util.events")
local ai = require("luasnip.nodes.absolute_indexer")
local extras = require("luasnip.extras")
local l = extras.lambda
local rep = extras.rep
local p = extras.partial
local m = extras.match
local n = extras.nonempty
local dl = extras.dynamic_lambda
local fmt = require("luasnip.extras.fmt").fmt
local fmta = require("luasnip.extras.fmt").fmta
local conds = require("luasnip.extras.expand_conditions")
local postfix = require("luasnip.extras.postfix").postfix
local types = require("luasnip.util.types")
local parse = require("luasnip.util.parser").parse_snippet
local ms = ls.multi_snippet
local k = require("luasnip.nodes.key_indexer").new_key

--HTML SNIPPETS
ls.add_snippets("html", {

 s("sc", { 
		t('<script defer src="'), i(1, "script.js"), t('"></script>')
 }),
 s("id", { 
		t('id="'), i(1), t('"')
 }),
 s("c", { 
		t('class="'), i(1), t('"')
 }),
 s("cl", { 
		t('onClick="'), i(1), t('"')
 }),
 s("ch", { 
		t('onChange="'), i(1), t('"')
 }),
 
})

--CSS SNIPPETS
ls.add_snippets("css", {
 
 s("*", { 
		t({'* {'}),
		t({"", ' margin: 0;'}),
		t({"", ' padding: 0;'}),
		t({"", ' box-sizing: border-box'}),
		t({"", '}'}),
		t({"", ''}),
		t({"", 'html, body {'}),
		t({"", ' '}), i(1),
		t({"", '}'}),
 }),
 s("tf", { 
  t('transform: translate('), i(1, '-50%'), t(', '), i(2, '-50%'), t(');')
 }),
 s("tn", { 
  t('transition: all '), i(1, '.5s'), t(' ease;')
 }),

})

--JS SNIPPETS
ls.add_snippets("javascript", {
 
 -- s("id", { 
	-- 	t('id="'), i(1, ""), t('"')
 -- }),
 
})

--REACT SNIPPETS
ls.add_snippets("javascriptreact", {
 
 s("uc", { 
		t('"use client"'),
 }),
 s("useState", { 
		t('import React, { useState } from "react";'),
 }),
 s("Link", { 
		t('import Link from "next/link";'),
 }),
 s("useEffect", { 
		t('import React, { useEffect, userState } from "react";'),
 }),
 s("axios", { 
		t('import axios from "axios";'),
 }),
 s("suppressHydrationWarning", { 
		t('suppressHydrationWarning'),
 }),

 s("cn", { 
		t('className="'), i(1), t('"')
 }),
 s("cl", { 
		t('onClick={'), i(1), t('}')
 }),
 s("ch", { 
		t('onChange={'), i(1), t('}')
 }),

 s("<", { 
		t({'<>'}),
		t({"", ''}), i(1),
		t({"", '</>'}),
 }),
 s("div", { 
		t({'<div>'}),
		t({"", ''}), i(1),
		t({"", '</div>'}),
 }),
 s("main", { 
		t({'<main>'}),
		t({"", ''}), i(1),
		t({"", '</main>'}),
 }),
 s("h1", { 
		t({'<h1>'}),
		t({"", ''}), i(1),
		t({"", '</h1>'}),
 }),
 s("h2", { 
		t({'<h2>'}),
		t({"", ''}), i(1),
		t({"", '</h2>'}),
 }),
 s("h3", { 
		t({'<h3>'}),
		t({"", ''}), i(1),
		t({"", '</h3>'}),
 }),
 s("h4", { 
		t({'<h4>'}),
		t({"", ''}), i(1),
		t({"", '</h4>'}),
 }),
 s("h5", { 
		t({'<h5>'}),
		t({"", ''}), i(1),
		t({"", '</h5>'}),
 }),
 s("h6", { 
		t({'<h6>'}),
		t({"", ''}), i(1),
		t({"", '</h6>'}),
 }),
 s("p", { 
		t({'<p>'}),
		t({"", ''}), i(1),
		t({"", '</p>'}),
 }),
 s("header", { 
		t({'<header>'}),
		t({"", ''}), i(1),
		t({"", '</header>'}),
 }),
 s("footer", { 
		t({'<footer>'}),
		t({"", ''}), i(1),
		t({"", '</footer>'}),
 }),
 s("nav", { 
		t({'<nav>'}),
		t({"", ''}), i(1),
		t({"", '</nav>'}),
 }),
 s("in", { 
		t({'<input'}),
		t({"", 'type="text"'}),
		t({"", 'value={'}), i(1),t({'}'}),
		t({"", 'onChange={}'}),
		t({"", '/>'}),
 }),
 s("link", { 
		t({'<Link'}),
		t({"", 'href="">'}),
		t({"", ''}), i(1),
		t({"", '</Link>'}),
 }),
 s("btn", { 
		t({'<button'}),
		t({"", 'onClick={}>'}),
		t({"", ''}), i(1),
		t({"", '</button>'}),
 }),
 
})

--LUA SNIPPETS
ls.add_snippets("lua", {
 
 s("c", { 
		t({'config = function()'}),
		t({"", " "}), i(1),
		t({"", 'end'}),
 }),

})


 end
}
