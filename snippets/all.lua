return {
  require("luasnip").snippet(
    { trig = "li" },
    { t('log.info("", {  });') }
  ),

  require("luasnip").snippet(
    { trig = "le" },
    { t('log.error("", {  });') }
  ),
}
