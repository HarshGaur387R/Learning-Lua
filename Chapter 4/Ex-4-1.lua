local s = [=[
      <![CDATA[
        Hello world
      ]]>
      ]=]


--[=[
  <![CDATA[
        Hello world
      ]]>
]=] --

local xml_fragment = "<![CDATA[\n  Hello world\n]]>"


print(xml_fragment)
print(s);
