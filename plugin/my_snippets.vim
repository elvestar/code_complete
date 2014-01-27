" Zhongyi's extension

if !exists("g:name")
  let g:name = 'zhongyi'
endif

if !exists("g:email")
  let g:email = 'Zhong Yi <zhongyi01@baidu.com>'
endif

" Common templates
let g:template['_']['em'] = "        ".g:email.""

" C templates
let g:template['c']['df'] = "#define "
let g:template['c']['imm'] = "#include \"minos/master/".g:rs."...".g:re."\""
let g:template['c']['nmm'] = "namespace baidu {\<cr>namespace minos "
            \."{\<cr>namespace master {\<cr>\<cr>".g:rs."...".g:re."\<cr>\<cr>}  "
            \."// namespace master\<cr>}  // namespace minos\<cr>}  "
            \."// namespace baidu"
let g:template['c']['ff'] = "#ifndef \<c-r>=GetFileName()\<cr>\<cr>"
            \."#define \<c-r>=GetFileName()\<cr>\<cr>#pragma once\<cr>".
            \"\<cr>".g:rs."...".g:re."\<cr>\<cr>#endif  // \<c-r>=GetFileName()\<cr>"

let g:template['c']['for'] = "for (".g:rs."...".g:re."; "
            \.g:rs."...".g:re."; ".g:rs."...".g:re.") {\<cr>"
            \.g:rs."...".g:re."\<cr>}\<cr>"
let g:template['c']['main'] = "int main(int argc, char \*argv\[\]) {\<cr>".g:rs."...".g:re."\<cr>}"
let g:template['c']['switch'] = "switch (".g:rs."...".g:re.") {\<cr>case ".g:rs."...".g:re." :\<cr>break;\<cr>case ".
            \g:rs."...".g:re." :\<cr>break;\<cr>default :\<cr>break;\<cr>}"
let g:template['c']['if'] = "if (".g:rs."...".g:re.") {\<cr>".g:rs."...".g:re."\<cr>}"
let g:template['c']['ifd'] = "#ifdef DEBUG\<cr>\tcout << __FILE__ << \":\" << __LINE__ << \":\" << ".g:rs."...".g:re." << endl;\<cr>#endif"
let g:template['c']['while'] = "while (".g:rs."...".g:re.") {\<cr>".g:rs."...".g:re."\<cr>}"
let g:template['c']['ife'] = "if (".g:rs."...".g:re.") {\<cr>".g:rs."...".g:re."\<cr>} else {\<cr>".g:rs."...".
            \g:re."\<cr>}"

" Write a class
let g:template['cpp']['ct'] = "\<c-r>=GetUnittestClassName()\<cr>();"
let g:template['cpp']['dt'] = "~\<c-r>=GetUnittestClassName()\<cr>();"
let g:template['cpp']['ini'] = "bool Init();"
let g:template['cpp']['mini'] = "bool m_inited;"

" Define variable
" Define const variable
let g:template['cpp']['dcs'] = "const std::string& ".g:rs."...".g:re.""
let g:template['cpp']['dcv'] = "const std::vector<".g:rs."...".g:re.">& ".g:rs."...".g:re.""
let g:template['cpp']['dcm'] = "const std::map<".g:rs."...".g:re.", ".g:rs."...".g:re.">& ".g:rs."...".g:re.""
" Defins pointer
let g:template['cpp']['dps'] = "std::string* ".g:rs."...".g:re.""
let g:template['cpp']['dpv'] = "std::vector<".g:rs."...".g:re.">* ".g:rs."...".g:re.""
let g:template['cpp']['dpm'] = "std::map<".g:rs."...".g:re.", ".g:rs."...".g:re.">* ".g:rs."...".g:re.""

" Return
let g:template['cpp']['re'] = "return ".g:rs."...".g:re.";"
let g:template['cpp']['ret'] = "return true;"
let g:template['cpp']['ref'] = "return false;"
let g:template['cpp']['ren'] = "return NULL;"

let g:template['cpp']['td'] = "// TODO(".g:name."): ".g:rs."...".g:re.""

" #include and using
let g:template['cpp']['ii'] = "#include <".g:rs."...".g:re.">"
let g:template['cpp']['us'] = "using "

let g:template['cpp']['iis'] = "#include <string>"
let g:template['cpp']['iiv'] = "#include <vector>"
let g:template['cpp']['iim'] = "#include <map>"
let g:template['cpp']['iia'] = "#include <algorithm>"
let g:template['cpp']['usv'] = "using std::vector;"
let g:template['cpp']['usm'] = "using std::map;"
let g:template['cpp']['uss'] = "using std::string;"

let g:template['cpp']['ic'] = "#include \"".g:rs."...".g:re."\""
let g:template['cpp']['it'] = "#include \"thirdparty/".g:rs."...".g:re."\""
let g:template['cpp']['igl'] = "#include \"thirdparty/glog/logging.h\""
let g:template['cpp']['igf'] = "#include \"thirdparty/gflags/gflags.h\""
let g:template['cpp']['igt'] = "#include \"thirdparty/gtest/gtest.h\""
let g:template['cpp']['igtp'] = "#include \"thirdparty/gtest/gtest_prod.h\""
let g:template['cpp']['igm'] = "#include \"thirdparty/gmock/gmock.h\""

let g:template['cpp']['itsn'] = "#include \"toft/base/string/number.h\""
let g:template['cpp']['utsnn'] = "using toft::NumberToString;"
let g:template['cpp']['itsf'] = "#include \"toft/base/string/format.h\""
let g:template['cpp']['utsfs'] = "using toft::StringPrint;"
let g:template['cpp']['itsa'] = "#include \"toft/base/string/algorithm.h\""
let g:template['cpp']['utsaj'] = "using toft::JoinStrings;"

let g:template['cpp']['ih'] = "#include \"\<c-r>=GetHeaderFile()\<cr>\""

" Namespace and class
let g:template['cpp']['un'] = "using namespace ".g:rs."...".g:re.";"
let g:template['cpp']['nm'] = "namespace ".g:rs."...".g:re." {\n\n}  // namespace ".g:rs."...".g:re

let g:template['cpp']['cl'] = "class ".g:rs."...".g:re." {\<cr>public:\<cr>".g:rs."...".g:re."\<cr>private:\<cr>};"
let g:template['cpp']['st'] = "struct ".g:rs."...".g:re." {\<cr>".g:rs."...".g:re."\<cr>};"

" stdio
let g:template['cpp']['cout'] = "cout << ".g:rs."...".g:re." << endl;"
let g:template['cpp']['pr'] = "printf(\"".g:rs."...".g:re."\", ".g:rs."...".g:re.");"

" Logging (glog)
let g:template['cpp']['err'] = "LOG(ERROR) << \"".g:rs."...".g:re."\";"
let g:template['cpp']['inf'] = "LOG(INFO) << \"".g:rs."...".g:re."\";"
let g:template['cpp']['fat'] = "LOG(FATAL) << \"".g:rs."...".g:re."\";"
let g:template['cpp']['war'] = "LOG(WARNING) << \"".g:rs."...".g:re."\";"

let g:template['cpp']['v1'] = "VLOG(10) << \"".g:rs."...".g:re."\";"
let g:template['cpp']['v2'] = "VLOG(20) << \"".g:rs."...".g:re."\";"
let g:template['cpp']['v3'] = "VLOG(30) << \"".g:rs."...".g:re."\";"
let g:template['cpp']['v4'] = "VLOG(40) << \"".g:rs."...".g:re."\";"

let g:template['cpp']['C'] = "CHECK("
let g:template['cpp']['CE'] = "CHECK_EQ("
let g:template['cpp']['CN'] = "CHECK_NE("
let g:template['cpp']['CNN'] = "CHECK_NOTNULL("

" Unittest (gtest)
let g:template['cpp']['UT'] = "class ".g:rs."...".g:re."Test : public "
            \."::testing::Test {\<cr>protected:\<cr>virtual void SetUp() "
            \."{\<cr>}\<cr>virtual void TearDown() {\<cr>}\<cr>};"
let g:template['cpp']['TF'] = "TEST_F(\<c-r>=GetUnittestClassName()\<cr>, ".g:rs."...".g:re.") {\<cr>".g:rs."...".g:re."\<cr>};"
let g:template['cpp']['FR'] = "FRIEND_TEST("

let g:template['cpp']['A'] = "ASSERT_"
let g:template['cpp']['AT'] = "ASSERT_TRUE("
let g:template['cpp']['AF'] = "ASSERT_FALSE("
let g:template['cpp']['AE'] = "ASSERT_EQ("
let g:template['cpp']['AN'] = "ASSERT_NE("
let g:template['cpp']['AD'] = "ASSERT_DEATH(".g:rs."...".g:re.", \"\");"

let g:template['cpp']['E'] = "EXPECT_"
let g:template['cpp']['ET'] = "EXPECT_TRUE("
let g:template['cpp']['EF'] = "EXPECT_FALSE("
let g:template['cpp']['EE'] = "EXPECT_EQ("
let g:template['cpp']['EN'] = "EXPECT_NE("
let g:template['cpp']['ED'] = "EXPECT_DEATH(".g:rs."...".g:re.", \"\");"

" Flags (gflags)
let g:template['cpp']['F'] = "FLAGS_"
let g:template['cpp']['DF'] = "DEFINE_"
let g:template['cpp']['DFb'] = "DEFINE_bool(".g:rs."...".g:re.", ".g:rs."...".g:re.", \"".g:rs."...".g:re."\")"
let g:template['cpp']['DFs'] = "DEFINE_string(".g:rs."...".g:re.", \"".g:rs."...".g:re."\", \"".g:rs."...".g:re."\")"
let g:template['cpp']['DFi'] = "DEFINE_int32(".g:rs."...".g:re.", ".g:rs."...".g:re.", \"".g:rs."...".g:re."\")"
let g:template['cpp']['DFi3'] = g:template['cpp']['DFi']
let g:template['cpp']['DFi6'] = "DEFINE_int64(".g:rs."...".g:re.", ".g:rs."...".g:re.", \"".g:rs."...".g:re."\")"

let g:template['cpp']['DC'] = "DECLARE_"
let g:template['cpp']['DCb'] = "DECLARE_bool(".g:rs."...".g:re.", ".g:rs."...".g:re.", \"".g:rs."...".g:re."\")"
let g:template['cpp']['DCs'] = "DECLARE_string(".g:rs."...".g:re.", \"".g:rs."...".g:re."\", \"".g:rs."...".g:re."\")"
let g:template['cpp']['DCi'] = "DECLARE_int32(".g:rs."...".g:re.", ".g:rs."...".g:re.", \"".g:rs."...".g:re."\")"
let g:template['cpp']['DCi3'] = g:template['cpp']['DFi']
let g:template['cpp']['DCi6'] = "DECLARE_int64(".g:rs."...".g:re.", ".g:rs."...".g:re.", \"".g:rs."...".g:re."\")"

" Blade
let g:template['blade'] = {}
let b:build_file_body = "(\<cr>name = '".g:rs."...".g:re."',\<cr>srcs = [\<cr>'".g:rs."...".g:re."',\<cr>],\<cr>deps = [\<cr>],\<cr>)"
let g:template['blade']['bcb'] = "cc_binary".b:build_file_body
let g:template['blade']['bcl'] = "cc_library".b:build_file_body
let g:template['blade']['bct'] = "cc_test".b:build_file_body

" reStructuredText
let g:template['rst'] = {}
let g:template['rst']['h1'] = "".repeat("=",80).""

let g:template['rst']['note'] = ".. note:: ".g:rs."...".g:re
let g:template['rst']['danger'] = ".. danger:: ".g:rs."...".g:re
let g:template['rst']['tip'] = ".. tip:: ".g:rs."...".g:re
let g:template['rst']['important'] = ".. important:: ".g:rs."...".g:re
let g:template['rst']['warning'] = ".. warning:: ".g:rs."...".g:re

let g:template['rst']['code'] = ".. code-block:: ".g:rs."language".g:re."\n".g:rs."...".g:re
let g:template['rst']['img'] = ".. image:: ".g:rs."path".g:re
let g:template['rst']['link'] = "`".g:rs."name".g:re." <".g:rs."url".g:re.">`_"

let g:template['rst']['e'] = "*".g:rs."...".g:re."*"
let g:template['rst']['se'] = "**".g:rs."...".g:re."**"
let g:template['rst']['lit'] = "``".g:rs."...".g:re."``"

let g:template['rst']['table'] = "+--+--+"."\n"."| ".g:rs."...".g:re." |  |"."\n"."+--+--+"."\n"."|  |  |"."\n"."+--+--+"
let g:template['rst']['list'] = "* "

function! CreateRivTitle1()
    call RivTitle1()
endfunction

function! GET_UP_PATH(dirname)
    let dest_path = ""
    let dir = a:dirname
    let length=len(dir)
    if findfile("BLADE_ROOT", dir) != ""
        return dest_path
    endif

    echo dest_path

    while length>0
        let rpos=strridx(dir, "/")
        let right_dir=strpart(dir, rpos+1, length)
        let dir=strpart(dir, 0, rpos)
        let length=len(dir)
        let dest_path = right_dir."/".dest_path
        if findfile("BLADE_ROOT", dir) != ""
            break
        endif
    endwhile

    echo dest_path

    return  dest_path
endfunction

" TODO Uncompleted!
function! GetHeaderFile()
    let dirname=expand("%:p:h")
    let dirname=GET_UP_PATH(dirname)
    let filename=expand("%:t")
    let head_file_path = dirname.filename.".h"
    return head_file_path
endfunction

" [Get converted file name like PATH_FILE_ ]
function! GetFileName()
    let dirname=expand("%:p:h")
    let dirname=GET_UP_PATH(dirname)
"    echo dirname
    let _name=substitute(dirname,'/','_',"g")

    let filename=expand("%:t")
    let _name .= substitute(filename,'\.','_',"g")
    let _name .= "_"
    let _name=toupper(_name)
    let _name=substitute(_name, '-', '_', "g")

    return _name
endfunction

" Get unittest class name
function! GetUnittestClassName()
    let pattern='class \(\w*\) '
    let linenum = search(pattern, 'Wnb')
    if linenum == 0
        return "".g:rs."...".g:re.""
    else
        return matchlist(getline(linenum), pattern)[1]
    endif
endfunction
