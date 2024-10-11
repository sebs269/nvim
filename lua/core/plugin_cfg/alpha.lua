local alpha     = require'alpha'
local dashboard = require'alpha.themes.dashboard'
local theme	    = ""

-- Set the header
if (theme == "mona") then
  dashboard.section.header.val = {
    "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
    "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
    "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!>''''''<!!!!!!!!!!!!!!!!!!!!!!!!!!!!",
    "!!!!!!!!!!!!!!!!!!!!!!!!!!!!'''''`             ``'!!!!!!!!!!!!!!!!!!!!!!!!",
    "!!!!!!!!!!!!!!!!!!!!!!!!''`          .....         `'!!!!!!!!!!!!!!!!!!!!!",
    "!!!!!!!!!!!!!!!!!!!!!'`      .      :::::'            `'!!!!!!!!!!!!!!!!!!",
    "!!!!!!!!!!!!!!!!!!!'     .   '     .::::'                `!!!!!!!!!!!!!!!!",
    "!!!!!!!!!!!!!!!!!'      :          `````                   `!!!!!!!!!!!!!!",
    "!!!!!!!!!!!!!!!!        .,cchcccccc,,.                       `!!!!!!!!!!!!",
    "!!!!!!!!!!!!!!!     .-*?$$$$$$$$$$$$$$c,                      `!!!!!!!!!!!",
    "!!!!!!!!!!!!!!    ,ccc$$$$$$$$$$$$$$$$$$$,                     `!!!!!!!!!!",
    "!!!!!!!!!!!!!    z$$$$$$$$$$$$$$$$$$$$$$$$;.                    `!!!!!!!!!",
    "!!!!!!!!!!!!    <$$$$$$$$$$$$$$$$$$$$$$$$$$:.                    `!!!!!!!!",
    "!!!!!!!!!!!     $$$$$$$$$$$$$$$$$$$$$$$$$$$h;:.                   !!!!!!!!",
    "!!!!!!!!!!'     $$$$$$$$$$$$$$$$$$$$$$$$$$$$$h;.                   !!!!!!!",
    "!!!!!!!!!'     <$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$                   !!!!!!!",
    "!!!!!!!!'      `$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$F                   `!!!!!!",
    "!!!!!!!!        c$$$$???$$$$$$$P**  ***??????*                      !!!!!!",
    "!!!!!!!         `** .,.. *$$$$F    .,zcr                            !!!!!!",
    "!!!!!!!         .  dL    .?$$$   .,cc,      .,z$h.                  !!!!!!",
    "!!!!!!!!        <. $$c= <$d$$$   <$$$$=-=+*$$$$$$$                  !!!!!!",
    "!!!!!!!         d$$$hcccd$$$$$   d$$$hcccd$$$$$$$F                  `!!!!!",
    "!!!!!!         ,$$$$$$$$$$$$$$h d$$$$$$$$$$$$$$$$                   `!!!!!",
    "!!!!!          `$$$$$$$$$$$$$$$<$$$$$$$$$$$$$$$$'                    !!!!!",
    "!!!!!          `$$$$$$$$$$$$$$$$*$$$$$$$$$$$$$P>                     !!!!!",
    "!!!!!           ?$$$$$$$$$$$$??$c`$$$$$$$$$$$?>'                     `!!!!",
    "!!!!!           `?$$$$$$I7?**    ,$$$$$$$$$?>>'                       !!!!",
    "!!!!!.           <<?$$$$$$c.    ,d$$?$$$$$F>>''                       `!!!",
    "!!!!!!            <i?$P*??$$r--*?**  ,$$$$h;>''                       `!!!",
    "!!!!!!             $$$hccccccccc= cc$$$$$$$>>'                         !!!",
    "!!!!!              `?$$$$$$F****  `*$$$$$>>>''                         `!!",
    "!!!!!                *?$$$$$cccccc$$$$??>>>>'                           !!",
    "!!!!>                  *$$$$$$$$$$$$$F>>>>''                            `!",
    "!!!!!                    *$$$$$$$$???>'''                                !",
    "!!!!!>                     `*****                                        `",
    "!!!!!!;                       .                                          `",
    "!!!!!!!                       ?h.",
    "!!!!!!!!                       $$c,",
    "!!!!!!!!>                      ?$$$h.              .,c",
    "!!!!!!!!!                       $$$$$$$$$hc,.,,cc$$$$$",
    "!!!!!!!!!                  .,zcc$$$$$$$$$$$$$$$$$$$$$$",
    "!!!!!!!!!               .z$$$$$$$$$$$$$$$$$$$$$$$$$$$$",
    "!!!!!!!!!             ,d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$          .",
    "!!!!!!!!!           ,d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$         !!",
    "!!!!!!!!!         ,d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$        ,!'",
    "!!!!!!!!>        c$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$.       !'",
    "!!!!!!''       ,d$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$>       '",
    "!!!''         z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$>",
    "!'           ,$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$>             ..",
    "            z$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$'           ;!!!!''`",
    "            $$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$F       ,;;!'`'  .''",
    "           <$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$>    ,;'`'  ,;",
    "           `$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$F   -'   ,;!!'",
    "            *?$$$$$$$$$$?$$$$$$$$$$$$$$$$$$$$$$$$$$F     .<!!!'''       <!",
    "         !>    **??$$$?C3$$$$$$$$$$$$$$$$$$$$$$$$**     ;!'''          !!!",
    "       ;!!!!;,      `*''**????$$$$$$$$$$$$$$$$**   ,;-''               ',!",
    "      ;!!!!<!!!; .                `***********    `'                  ' '",
    "      !!!! ;!!! ;!!!!>;,;, ..                  ' .                   '  '",
    "     !!' ,;!!! ;'`!!!!!!!!;!!!!!;  .        >' .''                 ;",
    "    !!' ;!!'!';! !! !!!!!!!!!!!!!  '         -'",
    "   <!!  !! `!;! `!' !!!!!!!!!!<!       .",
    "   `!  ;!  ;!!! <' <!!!! `!!! <       /",
    "  `;   !>  <!! ;'  !!!!'  !!';!     ;'",
    "   !   !   !!! !   `!!!  ;!! !      '  '",
    "  ;   `!  `!! ,'    !'   ;!'",
    "      '   /`! !    <     !! <      '",
    "           / ;!        >;! ;>",
    "             !'       ; !! '",
    "          ' ;!        > ! '",
    "            '",
  }
elseif (theme == "tmplr") then
  dashboard.section.header.val = {
    "┳┓    ┓┏•   ",
    "┃┃┏┓┏┓┃┃┓┏┳┓",
    "┛┗┗ ┗┛┗┛┗┛┗┗",
  }
elseif (theme == "shadow") then
  dashboard.section.header.val = {
    "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
    "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
    "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
    "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
    "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
    "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
  }
end

-- Set the buttons
dashboard.section.buttons.val = {}

-- Function to calculate padding
local function calculate_padding(used_lines)
  local total_lines = vim.api.nvim_get_option('lines')
  local padding = math.max(0, math.floor((total_lines - used_lines) / 2))
  return padding
end

-- Calculate padding to center the content
local used_lines = #dashboard.section.header.val + #dashboard.section.buttons.val + #dashboard.section.footer.val
dashboard.config.layout = {
  { type = "padding", val = calculate_padding(used_lines) },
  dashboard.section.header,
  { type = "padding", val = 2 },
  dashboard.section.buttons,
  { type = "padding", val = 2 },
  dashboard.section.footer,
}

alpha.setup(dashboard.config)
