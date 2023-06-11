#include <GDIPlus.au3>
#include <GUIConstantsEx.au3>

Example()

Func Example()
	Local Const $bGIF = "0x47494638396180008000F510000000003B3A3A7655272F3441535353686767EFA942C89E61ECC752FCD558FEF96AEECB98FAE0B9FCF2B3FCEAD1FFFFFF4F4F4EBD6F03D6AD72707070565454636361606060808080A1A1A1E4A131F2A63EF9B94FB05C23FBBF526E523A76756C8482798F8F8FB05327D8820CB08D7C908D83BDB080ADADAD00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000021FF0B4E45545343415045322E30030100000021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021FF0B584D502044617461584D50453F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D746120786D6C6E733A0021F90405320010002C00000000800080000006FF408870482C1A8FC8A472C96C3A9FD0A8744AAD5AAFD8AC76CBED7ABFE0B0784C2E9BCFE8B47ACD6EBBDFF0B87C4EAFDBEF76807ECFD7E3FF437D82008078838784857488838A728705058C8E6F909288946C8C91010191918299699B059D9F977CA2688704AD049D93AA66ACAEB098B2658C9DBB0187B8B988BCB6A1BF638CC77BC5C6C8C7CA62820CD1D2D3D1C4CE5FD0D4DAD6D7D87B14147A02E3027AE0A9DDCFDFE100E4E500E7C9E9617C0B0B0303F6F6F8F6E8F3DE7AF6E5D3C76F81BF7FDEF42D70C0D081423F08D5296CE8501FC4886002EA3BC0F1C0C34418136EECF8316446000A535A0469928B4695255B8A74D78FA5CC2E1A691AB4791327CAFF95" & _
			"3D97C50CAA854F860C24922A4D7AF420D12846912E55DA54DE53277C10684570742B820460131C0D9BC0E9552359B776DD4A766C58B36785E8397AF4C103050AD66A6D9B01AF5DBA192EC6950B00B05DBC7ABF863DEAF70160C183E766389C3783D7BD64C5F655F03730CFB3922927C6CCB771D5C1848F366820DAF2E5CC9A1BAF3E1D57F2EAD6971597E6FC60B6E7C88533942851A178850D1B72C3066BBCC270DAA0830F6F8E5CF9F2E6CF7FD70E8E172F070EB9498745FEBD7B65C844259BFF1E5EF7F80DE5BB43BF2AB9B9D711F8F3EBC74F167B09F441D567DC7DFB15D89F71C301D8931E1D7480971EED89079B1E7835A8E04D0C3AA80084112EF7FF1600157670A1499255B51A87D64D08C089C1CD87618B9EB1D89E877AB0F8D8672402C05052353680E26BCBF5A847520C8D18911E3B922024003306B9A28F0010E980910821E9008F4FFEE8158D594649429138866425963286C7258B5252F98F4664426980012986F5E69249D5F4149B4A76F9669C60CDD9659D3BDDF9539B7AEC0924597EA249829DE90D9A278B866E9959A25002AAE63C780A1229021A74AA01A206086269981865DAC7A69E7E2A67A87D8C2AA83D766199DB21A00E49825D8C06F853AC79CE3A48AD5EE21A68A30A61B9A9607A000B68AE0BFE648FB1706E852C00CA2E0A14B1FA40EBD5B4D50ED56CB1791ECB52B2ABDAEAADAE9A46ABFF15B7E536B25DBADB8E4B6DBBDCA00641A1D12A48AE9FF62A81EFBA38EECB6ABF49FC8B80BEF3F24BF0110623DCE7C00BA30580A10E27A070C444341C70C210631CC8C4F96EFCF0A5D1512CB2C51D7B7C2FC81717816FCB1EBF9C72C62CCFBCB0CC54E24C6AC96FDA2C71CF3EA3A647A70033416EA724374BF4C13BAF0C16D24D0BBA74CEF3421D330053377DB40649BF98B5D155731D75A35F2FB175D7320DAD41D166878D764B6AB3EDAFDB63EB5AF6DC4F8B7DF5DD05D3BDF7DA4C839DF7DB39F28DC4D9752B0D38D58327EEF5E25AFB8D71DC81B7DDF8DF72F77DF9E40088E0B908547F0EBAE36977FE79E8A7932E260076996042E687CFEBBA5D84AFC93CFA03AEC3CEB0EC26D0AE7A954C6ED50AD5AD90553BA6C16B357CE4C57F48B02F4F406FAFF44D50AFF2F5D867AFFDF6DC77EFFDF7E0872FFEF8F304010021F90409320000002C0000000054007400000272848FA9CBED0FA39CB4DA8BB3DEBCFB0F86E24896E689A6EACAB6EE0BC7F24CD7F68DE7FACEF7FE0F0C0A87C4A2F1884C2A97CCA6F3098D4AA7D4AAF58ACD6AB7DCAEF70B0E8BC7E4B2F98C4EABD7ECB6FB0D8FCBE7F4BAFD8ECFEBF7FCBEFF0F182838485868788898A8B8C8D8E8F82851000021F904090A0014002C06000C0058006A000005FF20258E64699E689A026CEBB26A2CCF744DBD3860EF7C4FE6409D6F48440573C564311060150A479772BA633AA15118752B733DBF0526F829E59A4DDEB1785C3E9FAD2F829C0007BADDF5D69CDE0CDEDF7D384C83812F7F66792E84892D875C8C59655A6D8E3590919342949533790C9FA0A176372D0BA60B5A9C329EA1ADA32EA7A842AA3338A62E0303AF001212B1A9B431B6B22CB9BBBDBFB3C12AB803B1B9B786232CC80B0E0EC0CB462DD0A7DD383FBCBED6D8CADA2B00A6D7D7C9D1222CA6BDF212D9E727F0E4ECA7F899F1F3F4E6ECA149B7E0C08158C980C142584FE03B820611EE6B34AD14436513326ABCC0B1234747F84C0910903060B8642434FF6EF4D811244191242736AC889282CA8C2C3B366890D125CC9A5D005CD37273424E8E3B7B1EC23712A830A1E552AE3C7A54C4472E21654A1B58532555AA562F98C91A0DDCBD97B24C786549CBA05BB709E2CA8D7B8403077725D67A6CFB16EE5CB975EFA64D8193ED1D17081223F8CBB83163BB334514DE7BB885E2C58E333FE61079845237882F2BD61CD780E9D373CDAAF87C26B468CC9A4FA306BC35C6D52D2C5EBF8E7D7A148FDB5472EBBECCDBB4EF1EAC93081F9E9877671FC98B2C67EEDC2456EB41998BD6BCA935F6A7DA8967EE8E1B800205CFCF2616AE41C3EEBF1B36B0A0FB5DB979F4F5D52360EF7E3B7CF900D0F7070BE79DA79A7EEB019041FF062CB4E7A006F145B8017DE9D957207EE45574190B0B36F82084124E98408663B530CF485924D8A165FEA516E088F94DE1C28902A4B89F820CB2289E8B02AA92D54ED4FCD30B643866F21E8F30D2F26303410A49E48A0F1D495B8F9C64E5C24E129942643852D247652556B68065965B6AD8E2944906E3C285590CD4256DE7AC59609B254CD75C63152E45910D76C226977131EA992797679666C0A00E6DF326A08912D127638C36EAC3A37F452A290F94CE65E9A534F4792792884AEAA99F5EA6C929330068C7D87CA69EAA28757FB11AAA3D7D4610816CB8F6F6E2ACCBD47A6BAEB8CA1A689CA92A06A8ADB6E2209BB0AE129AD8B1C82AABEB979C4E076DFFB2CAB0B0ECAEC3AA59ECB38702806C040A01B02DB58D5A1BEEB833691B2EBA89AACB02BBD6B9CBECA5F28A1BED77EE020AAF36F9D28BEAB9AD0AD4EFBAFB766AEEBB05D3BAF0B5E4066A2FB7A22E3C6FC2354CFC6FAF16EB8B2D9F1D6F0C70C71FEFA071C3C4423BEBC9BC7A0731A22C773B20C9182BEC2FCA0ED35732C837B75CA2CE11631A32CEC4020DF3D03E7B6774B731BB2AECCEB5202DB39E4BF3CC70D2A0BD08689E4D9FCAEAD6124BDD2C29AC8A1C4ECF53BB5436D1758A8D2F000F3C80B6CD57A75D59DC73479D77BC703F50EACA0B436D70DF7F4FEDAEE039C76AF7DA6683F9A28B933E0EA743C7094D1F90769777A0E530623EB67D104010571CDC5837CB42E8A33F50BAD39237FE393AAB66FE3AD9B5CD6E720E21000021F9" & _
			"04090A0013002C2C000C004C006A000006FFC08970482C4E00C8A412696C3A9FD0A8F4B8AC4EAFD82CB1CA4D6ABF6063B71B2E6B030164A1305E9ADF51B49ADDF6C2EFE2E47A5F40F3D74A788254737C7E7F81836F724B048E048C648A6691498F90696393949955689F9D6E9B61954AA0A576A35FA875A2AA67A1AD56AFB04A0CB7B8B992B45895B9BF0CBBBC58550B0B4A0303C2C353C5C749C9CBCC51C803C6C6C9C6B3D3C4D0D6D7D9CF89DC5948C60EE80ED7CFDA00E45AE60BE9EAD7F14CEFDDC60707EBEBE3F852E2EDEB572F15406A0008FA337810A1C282F71A5E8927A0A2807612E1255C60F1E2B38C5FE22D94C5A5A14888245DE1DBC7926582973063CA84C981C3830711C9B56C39B3A7CCFF9A3773F25282A028029F310D189859D3585077D3881A450A5329530E4E71427D25D5E854A44A9576C92A745357AF47C1861DBBE0E9500068D1520D6B0049830627CB42B9C0B7AF5FBE5090C4F53A772D80BB79B74EF9CBF88213C10820C72D7CEF24C629162C54A000B85B51C972D556DEB8F04A660B053A4F841B99F564A489E249982D41EF84D39A2D3476DC8C3568C2B0EDC8A66D1B77E6DDAB3FFB769D36E6860D485EE6DC36247385D38CC340DECE7CE6F3E809A6AB14625CF75FEDCB356840A25EFDF3F71BA4338C829BEF89FBF8F3874CBF1E407B0DF03D279F6D4ED477417E089EB09F5748649001645495A50463B84D025A830FB216A162424CF8FF576E168CC29D831006D761120AA4A80081662D47A286261202808A2B7248CB8819A634A38AFF3083A38E48D0D8E330170270D391483EF0126DC4CDC74D914926B92493B539498E330FB5531A4858669918484370D7C64D29B208909863905923985B3057D44C625999D16FCD5555979C07D1F9A64CE099898F9E75CA271F9B540CF6554C7DDA68929BA1210AC0A05C321A410474556A18A48BC635A9A596269AA951714E3A691574799A2773A18A4AEAA5E1294A24AA778A1A8178A53EDAEA99B022212BADACFA6961AE00ECEA2A1271621A15B0C23E0640B1B71EEB55AAA3BA7A62ADC67285ACAAD252416DB36FD59A6C6FCCFA7A07B1867D1BD0B27756ABD20AB9BA625B0EBAA6761BABBBDD849BEDAFA98ADBA6BD3EC21BECACF736C1AEADFABE31B0B9E0A6CBED8DFE227C2EBFC7CA17ED7E10BF2531C0142B5CB019894EAC51C50C5FBCB1B61A073C48C7187F5C72BF229B5CC4C0EA8A686B9C23C3BCB0B52FD1ECF2BE2B1F0B5ECC08816CEDCF37271CEFBA463E20B4D104EF5C0612372DFD70CF32DF2468D1EF2AE571D54AB60AF46A5AA72CF34C23E741B6D3EF9E0D07D15F1B5CD2B84D23867637D4711C375E738389040410BCE416A1BDF1EDB75680F7A676E1081D8E3842752F2EF0DB7004010021F90409000013002C28000C004A006A000005FFE0248E64694E40AAAEE9E9BE702C976C0DCC78AE8B767FEFC0E0C867131A738140AA5020AE8ED05772D974B6A258D28AC92D24BBCCE75095056EC15FB098472EE3A62C829C00EFB11578C5D5E470B845752A73744A3E77797B257D7F13812B499085355A2A0B0B898C248E2A919B892B969899809256452800121296A13FA39AA5A62C6CAAAC97AEAFA42B0CBCBDBE76A8B5ACA2A381BEC70CC029C2ADB92635AD290303CAA9AA1293CE6CA0B7D2D4A7CBD7D9DA2BD3B6E6DD6DDB00AD797AB8A3E503E7F3E99F95B7EEC49929967D7DB6FADD722130853E78FCD82DF8E720A0C27D05011C24A7F0C0015B0EF7B1E96310114237022D621CA6EE440A8E123DFFEA10A311952D0102327EA4A1B0DDBB956D5A0AB40453A68C9DF96ECE00BAE685C09E2471105551C082D29AE97E2A44DA6C28D415142A3CB5A5AA25A59157AC70E0E0504405A756B9629BF90C6A55B164934EB08056AA5A9D2A2CEAD5BB2281DFBF80018FAD4AF7C205BBACBAB2459562EFDEBE8123FB1D3C70AE05C3521F3CB8260ED70A04A04383964C3AF0B8119863A4D0CC5931A514A245979E9DE0B488D4885D8F89CD1B01EDDAA760183E9B7B2DA5DEB17F03137E816EF17BC865974EE1D7EB89C2878D2AD4CD267AE8D9D48103B15001B7C9EDC65179971E397CF5C5CC6108D40D7BFD68C9EEC507314FF0E18FFAF521475A78D6B960D87014C8E75FFF770804D8DB8000BC27C481CD15A0A0258A899642061908685A847F15F88261CE6987E15A1A02C0A18780E527A281CDD575DE8900AA98410A1AE4A8638E1BF4B841071BB8085F0CC35D965D5B340200DA863702B0E38E3EFA28E411241AD9DF5D3686A564721F4A880585FCB994D85A1C6AC95B7B20BE482498572EA0CA58D071D9629A43C278DB81D8B5F9260771B217229D136647619E33BA99DE71720237671674356A254D49B675E69F8B62E1287961AED3DFA4EF552A436A60867A2071E741B4A59F53CE00AAA8A1526061100EDED7E99F51B05AA219A77E4729AD50D8AAD50EB1EA3AAB9ADA30C8A9A2FA159B43B0B202678001C416CBAC6F7F3E1B6DFF2ED3369B82B5752AAB5E747372EBAD6AB9B2E82CB4DD52645FB8E88EBB696C1144F0ECBCF4CE4B60BA09F1166FBDFCA2EBA5BBDF82C66DBCF1D640EFBD001B8BC0C0041B6C2FA0EE3AC870C19E017030C4E34A8C2EC111DC73F1BFD2E63A71C7336DEB6FB2218B36B2A9DC828CADC81B37BC98C92DA31C0FCC29708CD7C7362774B1CEDD9A8CB03334C74CF153355F0BACC546938C53D2F80A213400403F7DB2D2B8321CEDD42EFB1CF3D64C0FFDF2CAF872DD33235357BD6CD818134DE7D14B434DD17B705B2DF62BF7D6BDB6DC6ED3ED74DC57476D44DE7FDBDDF6CD7E83CDF7CB7E71AB78E07327E0B8E06663BD74AA86778DB60A9EEE0D39DE0068" & _
			"B6B85AE7776F2EFAE7999F8DC56A0F0C2B3825CFEA0D52E8AD236BB9C9B297919FE64BA3B9B9EF50ECAEFA11CB054F67030D58DE9F6D831F9FFCEB09530201047E69A67CC4004C5FFD03D7670C62E7D1E3047CF8B00647FEE5B30411020021F90409000014002C2A000E004C0068000006FF408A704824028EC8E4B1C86C3A9FD0A853490548AFD8ECB4CAD57ABF4F6E174CFE0602C74241AC2CBBAFE7F49A8D7CDBC348B5BE70DEAB934C138283848513774D497E7C018B80458691838844714A0498049663429284944F9B48999A6862449E93A04DA24967AFA654A885AB70B14AB0AD754386B552BA746D9087651FC61F20205AC0C1BBB36EC7C8CA59A20CD6D7D89CBCC45FC6C9C9D158D5D8E4DA9DDC5EDEDFE159540B0B490303E6DB9F51EADFF9DF58EEF048F2F4CED983824F5F3E7EFF06BC7B27EF9DAC2782B0144CC6E46094780A1736F4F7C849C42B13A711B128E5C83B07281D2CF4E7D04A94814542922C42F122809329579AF427052611FF99FB9AD484B2F3C081953A9D4144F753DA509A22BD143D8AB4E592974C871474F254CBCEAA565DF6CCBAD5D757B01DB13229EBE6D191060D760A982B20ECD5B123837695BAEB6DDC9B0BE8D6E5A814CA472116F7224CEA17EED9960A222B60F3CC2CE0B0701D5F5E7844F2E453DB7C51382B4142E3BF46531F48E2F92CCAAB1F0FDF216D1A4066D4AA572369BDF9B5CBD859DB6E2E4D0581F1E309922BEFF7EEC183C84704DDA544BBF871E3CA972B59E91C3A00E962A903705EBA7CEDEBD7B3AB4F70C4FCDC248CC30B276FFE3C7AECEBB5BB17009F73E132ED4910D67DE9E5971D15BCD5579B1D010E48207E062687A064019A371D190DFAF36081060603FF164F6F6478C486C845E8215AF2812122002442A8DE11061870E11001A90840692DB588408700C438A310357EB1D388C76DB0C183EB1D919C8F298A660460441A6724922F02B0A48C4D3AB9A271471869A4066086E9A5974AB297A593A3DD28A0860874E96598628EB941993FA299268E8465904112F72569A5997626A266587AF2899E9F129EA9E5664714EA5294251EF8679D689ED5E89E8FB27868958906CA84A54A41EA62A29D7AFA647C4FF6C929A0A616F150AA9B4A5A6AAB340A032B87DACD4AEB15A2EEB82AA5BB7EAA29AEA4B21A6C49C3469A6B024C1E6B93AAB2328BA5B344253BAA76CD52BB05B45566ABEDADB1763BEDB7E0128BEDB8E4F61AFF410431AE172393BA3AAB2EBB06B8FB2E9D8A060A2993EBAE4BC5BB58C6BBEBBE58F61BC1BFF74E9AEFA2D7F1DBEF7430262CB0A9041F6130C43D4A6C6CAB150370719611E31B6CC71F6F01EFC6FA26EBB0BF8A467C32B0A090FC70CB19BFBC30222E173C334236535CB3CE2CF31C30CA8BAE7CF0CDB5F6EC69C81EEFDC4EC622730C75D3300BAA74CA0E572DECD576325DF2D35C573AF5D74247ED73A241F315F6A2681F2DE4D4135BD6B6D6AEC24DB468F8A6ED95DD74E3ACB0DE600FDD77887FBBADB6E04833F827938303C977E2845F9956D90AD39A84A46FAF8D3712981F6EF6A2CE696E93E8318FF700E978A0AEB873C5365E778C80D77204EB66C62D3D74ECAB94D9B9707E6EDE7BE4556EFE2AF07EB98ED0F0BC9BA919B91802000104C93967FCB7473C1FFD03D36BABBB76CCF3F57BF77B230F3EB2E27F11040021F904090A0017002C2A000E003A0068000006FFC08B70482C0E01C8A412696C3A9F50E3720A885AAF4EAAB68AED5AB754AFB81908200B05B072CCBE94CF6935B32D56A2EF85321EBDA663ED7B7A7B7D7E506F4B048904875A85518C498A8B665B8E869453659A984B964F904A9BA0499E4EA37284A544A7A873AAAB9C0CB2B3B48D4513B8B9BA21210514B85690B4C30CB644BAC813BC1615C057530B0B4A0303C651B8CB16CE5F4BD1D3D56157D82116DA137F49D4D1D1EAD29D5DE3E55EDFEB0BED535EF1166348D10EFF0EEAF5730725993E7E00FC01149890E01383CAC8EDABD3F0C0817A0C5D898B288F62348B18D7A5B212AF02C27A020464E4826557883603A3A55C992F172F3F03678A64B9D125CEFF863ABDF12489EC66A1983BDB6C3BDA90A1D27314A7589C3A155F4FA8F3A850A56A95E852284A10881D4B566C82B368D36A74F2354AD8B270D3CA4DB0B6495B225AE0EA453077EEC821778F50D91BB7AF5A5276B11641BA92305FC368919CAD0BB629C6B77B2147063079A85B0012428B46A2A0B4822964359F356040325D2E818520113D1A80E9D34B52AB66ED7A4E6CC14895A4A48DC4EC6E039D3BA30B9E64786DE39A59277F8D5049E9070F56BA4ECB1B80F4D71C3860A7FC64CAF5EC3B95CCEDFE1D49F8F19EB3FE63785B0944F71CA2C1FF397F67FD24F701109E7E0F90979516FF4D87042E03EDC71482A6F5C6D96B0C36E4A023C595A5DE669D31A7FF4A86646DA860124E9502E2587E4DA8444806B27122741CBEC698439EBCF8D8611D36445C7C74D898628ED1ECF8210085E148DD055D994864593F1E99648D4BEA66648B431619239596D808E388AF34A1E58D57F208A5634D62F913997249D8A56C518E154104AC7D67A472AFD8F8669CC8A539219D638ED5DD9B6F4E81A79A4A92F527A082C64928866D1E1A284F480CAAA2981419DA1A008046A051A48A4ECAA8A548644A1EA78BF6D8E8A5A2F248AAA7A6828A29A29472DA1D9F95FA892AAC95494A6B5692A68ACEAC4722D42BAECF7877E9AE5DACEA6BB2C696CAEBAD8F3EEB2C45879AB958B3AC0A7BABB578618BECAFD06A4AA914DE064B6DB8DC22599A6EBAE47616EDB9D3A2E3AEB8DAC65BECBCECAA0B6CBE6CE23BAE97EBFE5B99BFF5664B11C1F01A9CD56A97E6BBEAB7F726D0" & _
			"9DC301FFB49DB9E0DACBCDC514EF2BF0B5D8795C30C495857C2CC6C58ACC2C765C9ACADABBE8B0FC1AC9291B0073C487319AA2BC7AEADC73B14F9ADA59030D586BCD4F4317FDF19AD74200C15917325DACD35017B8B4D417D32CF5B53B6FCD6CD05E97170E1141000021F904090A0018002C1E000E00400068000005FF20268E64699E24A0AEAC8ABE702C8B6D0DCC788EDAFCADFFB89E0D487C0502AA4241C82A3A47C7E492E97A3A59CA6CE1A85536AD406C97DBFD8271D116614D48F3CE39F78ADD46F6E0687BEDC8D7B7F033722C7D822B80328554668728898A558C8D7E0C9495966F91922C969C0C984535348627350B0B2C03039F44A1188B292DA6A8AA4339351212A6B2000ABD0A9023B3BA0BA9BBAF33B7B9BA2ABEBF3EB02AC5BAD2AD41BCBE2AB8C33516161516262AA60EE40EDB00BB3ACCD800DACB2DDDDDE1E80BE5E6EFE93FC9B8B82A0DFF00E3810B46EFC08161E7805963C18F9F3F80FF04C2326510E13B85FADA2963011162B70913440D132020E1B32B1A8DFF01E818B0024891BA489A04936DE34A960D40EA9C5080C23F710B64BE83537317CE9C3B2778FB494F683E9A294FDD3C1AD102488840CF118DFA906A838F13B0D2D37AA6A854AF4927B030C896ED2A755CA7E24CBBB6ADDB5A61A2AAAC71E1C2CE6E0802234840B8B061C3C76098DDDBA2EFDF0A82071F9E4C38F18BC55203830CDCB7B35F9D91291F36604045608C3BF46646B0198167C7A0058B364CDA3402D4A454DB06E99973E7D68167173E0D80B83577BB344FE8EDFAF784D0C21310376EAB4586EB197A62C7CE1CFAE4DA00C0535FB862BBB7EDD7BBCBA60C5EFCED9379598064D15783FDFBF63B6CD8CF7F436500F6D9861B792ACCB7427DF8DDD75FFF7FFF0558DC7B805CD5807ADE1DA6C275B68D77868414AE37D985196408E121DDF4256285880180E183035AE18D890F46161C65200A081F1EDF3CC2C38A1A02D28D8E36F03822235921F4C091482699240B3DE251E4304A46892493431EF2A445589AD42254597689503599B8A251434086995B43FDE868666A54CE98E27F6BE6D6A6646F26B0659827D259980A70C6999B8C7AFED7A79F0401EAE69E000C4AA89886066A67A28F2ECA68A38EF219E9A279A2F8A8A266E6194104A4852A6AA896DE0915A09F8EAA6A69909A8A5264E07DFA690DA2967A232022C62A2BADA4B67A6B593122A0EBAC27A950ABAF99E4CAAAAC1100636CAF9C020BEBB2BBFEFAACF4AD44063B6CB3D686C76AB44F28AB02B32D3E0B1EB8AC684B2DB18A797BEEA5501D4BEEAFF3BCEBAA0CE6AECBAD35F6D29BD1B6F78AD9EF5600FB5BEFB7F002AB6BC0A20CAC30B50C0B8C70C4A9150C97C3F1EA1BF0B5C83AE92BBBFF4E6C7075FF817CB1C85B95BC6FC8D802AB72C41CA30BCAC72B9FDC32542F8F7CF0CD56580A1ECCDEF21C2EA43FEB5C42CC094365A9CC9705DDB1D290325D31CA3D037024C6D5613DF3D554DBFC74BA470A9A74C82683FD80D81413445AD9797D6874BB6ECF1C77D573C7F787CB8F3235339843FFA7B7A4D54100016147A6DD29008213FE80E178468D28E0C8382E35E404F14D399B2D84000021F904090A001C002C1E000E00400068000005FF20278E64699E24A0AEAC8ABE702C8B6D0DCC788EDAFCADFFB89E0D487C0502AA4241C82A3A47C7E492E97A3A59CA6CE1A85536AD406C97DBFD8271D116614D48F3CE39F78ADD46F6E0687BEDC8D7B7F033722C7D822B80328554668728898A558C8D7E0C9495966F91922C969C0C98993B2D0B0B2C03039FA02635A3A5A743A927ADA3A3A6AC7FB0A12AB5B3BB35B8302AA30EC30EB3A400B6BF2FC10BC4C5B3CC90CA25CC0707C6C68BD323D5D7D8B6D24518E31861C8DFD08667E4E53FCCE8C7E144EC4FCC02F702C9EBE4F5E7F8F9C7C0D03BF32E9D407E04CF65F3F1645C3F16D62246F435AF5D911A122552D471E182C3111F65B04040B26482932853FF9ED4F6A263480E2F81AD286952A54D9626264C70D9AE631000348322B06993A63C123A798AF0394385509A44551A657842A7CE711D998A04FA9464D4944E111C1D617502D6AC3FBB7AFDBA92EB5811052894EDD8A0C1D9506A6BDA34C0D7405892632D54987BA1EEDD585CF346EDEB37B158AA39ADB28BC90D80040980B96AD8CC7983E7CF9EDB6E0EFB9643D9C916A959C6FC9824E7CEA03F8BD6401A72099D152C184EAD6A75E60C1984B255017CE463143A2DE8B6CB5BF5E5DFC1830E07507CE6F113CACBEA0C35EA3238B7366C8EA60E3C034E0ED9B5735FE03D1EF81AE26993AF5E1AB70599A31E3CA891D9D86516B311671E78C84DA01C7E0BE8C7DFFF63FE490060022A8C575D663028772062F9ED07405DB55DE6A1040BD530E1752858781F86096AC821781FB6F71D0B239626C285BD5DA6E0860DFCF5180B19EAE7A38FC6C9885E05A1D8A8628E8EAD92E28F3F06691B0A155040430B2D3A681D5428B150E587E79558C0945AB6681C966DA9B0A5875D2E0380026C2A602688E98C39145142F4D3A69BAB8578E59C37DD61450D2E1E736758D33102289CB60CCA55A1B05041269D4F1EE2A85E906EA3A3705F0909C8A5D2651AA9A18E911441048C95DA970A6DE1C2E9A8A69A8A2A849F2644135F2A8C3A6A0D8CBDAAE9158ED10A80AD11E07A2A00A946A2A3AFC04AA342AEC4C29AC9B18D254BD5B2C316BB69FEAFD1DA3A16B5BAC67A11B6B56A1B29B7CDEE9A5649C88A2B13B3D6FE09EEAFEAAAC9AEB309312BED4FBEB6DB8FBDF16E952FBD60907B6F0EE4EACB6BBAB77AABDABFE6360540BA0D4FC9B0C2F8661B31070503EC2EC2C1525CD9C47008DCAFC320E3D16DC2E6941C70B9F05E9CF1C5A1" & _
			"B485B23B0F3766F0B732779CB2CD1AAF9CB3CB35771B32CB33EBF0B2C75B9DE42BD02ABBAB74634CF30CB39AAFDE1CC3D14357DD33C95223ADA67E4D572CB4BB6077BDF3D8DFEAD796D515174D840A6AC3CA36D76E9BD3A7CF2A4DADF5DC3FDDFDF62B78ABB0E2B71B390DEBE0DB100C0004109C7463E20E33EEB88690279DB7D7CAECBD75E58815CE792E2D84000021F9040900001C002C12000E004C0068000005FF20278E64699E280AAC6CBBA6702CCFA96B0374AEEF778FEFC060C977131A7781C0AA5020B68ED05872D974BEA258538BC92D24BBCC6776BC057FC1E23174EA22B809EC9E3A1A67BDE14ADF7C9DB725FF7D2E7B47752D80852C83468856698A48818D825013959684810C9A9B9C72949695982D9CA40C9E42A0A91347360B0B2D0303A741AAA0AC2EAEB0B2454117BE17B513161642BAAEAEB1B99342BFC0B5C3C52CC9C7D3364218D8D9D8A01514B6412BAE0EE30EC7AF00CAD7DAD9A01605DF40E10BE4E5C7F2573ADA24CDD80D0D95C3A0F140B7E0C00173E61CD1D037821F067F0087558847D020427B89723014D1CC9FB64AFE0212CB21EFA2327C1AB3FFEDFBE591DD849012759434A97006361237476CE4E08B44859134E409182A205D909C229072D8D97384C0A00489163DF788E40F2D3E2EA2AC0A63EB08225AAF7225D102540F0468D3A235C896ADB5B11CCA5A3AAB366DDBB66FABCE74651640DDBF7513081E4CB86696BD0BFA025E8C80B0E30486B1AC9040B9F28A4A0A14D860DCF8316400060CA0F51A657265CA972764DECCD8F3E7D0A3C5AA6961AED28AA1A7572C761D3BB622DAC76C03C06DD92F60DE087427973DC846E6070F12BA50EB7AC306E5BE1F3957005D7A0BEA9EAD635F0EF72B8071D233AF0660BD7D7B0D1A94CB67AEF77C3D65EA35B377FF3EBEF1F9E591E5437E2BB8B642061914F859FF80E6F5402000060280A082A431C8416C92B450187D166298A1828255C8A069E64067E2890F20B8A1853500405989289EA8E260225A48E239A7E5585C8D2CDE689A8EB965C4A20AD32D47C49033B0660592328C07DE633C32E9645A113219C394685569658BBB7916259258760625875BC665DC5F5A9629206769AA294298597A49E690705229A79B6F9ED9DA9D6A4E194104A1052A68A014CE599E9F800EAA68A1568E17DA0A7FFE6983A08C4AA9E7A300441AC1A48442B8209D971A0069A428AD40A9A75F3617EAA8928A656AA7211AAAAA5A986A5AE1AB958EB86AA6A472882BAAB2CEB6ABAD73BE8A69AC870EDB6B57A0C1FAE958C68ACA6BAB501DFB2CD557D1B2BA69B0665A9B6A69CD6AFB6DB7D2220BD7AFC4CA142EB0BAD6BA2D45DE720BAEBBE3E6196FB2EE526BD5BDE7AE9BEEBEE55E0B2DB0FAAACBEFC0B1160C70AED812FCEE4007379CF0C306075C2F14852A5CADC5F262ECF0C5BF9A8B70029882BCAEC812932CADC9110F0CA2C0499E0CF36F2CAC0831C70343D772CC3BEFB182CE38DFCCB0CF0040172BCAF01AA0F11C3F3F70F4CC002F2DEC98E052ADAAD5B760CD342F557FE6CFC550E5E571AC5F778CA7991040201874606FB942DA6B3FD076A39EDA7C769375D368369EB3DC7DE50D21000021F904090A0017002C26000C0052006A000005FFE0258E64590268AAA266EBBE702CB76B0DCC78AEC3767FEF24157038F2D9882221521708A00A05A35287522858CB5CF3199562A900EB372B5341CF85261A3A8D551593C998CC4BADD3817BBB6E8DCFE9265B2B048404823D656170723F8030872985864E3E897D8C8E31902A4D9D94357C56578D992F9B299EA77F418A62A4A52DAA5E292E88B09A9FB3A03447B78FB90CC1C2C3B6AC12C7C8ABBE2390C3CE0CC54500C8C9AFCB26350B0B2A0303D149D312DADACAD7E02AE429DDDF1728C7E3DBD6E6D228DDF0F6F17BED29EFE3E5E6DC06DC13988FD6097EE2FCC99B274D9B83870EE0A148C7CAD544850C5F5C8418512145691601485C98F1E28103F046FF8E7983A241838B1F33B2D27632A5C2958A5ABE148951E6CC710204A85CA8D325CC783E7F6A0B3AB41600974679C64C0A6EA9D09E30FCA41849F52753AC2FB41EFD57522AD8732B1224E0C001DE830764019A9D8A56855AB66EE192DCA1242EB893800FD4504BB83061BC0BDEFA9DD1772FABC027071B9E8C58B163C666F5614B81A03382C9A0411B184D7A719DA66E387B0ECD9A30E9D29713C13BA64C85E7DB9F5B2740F17AF42E32476913558D3B776BDEBD7F67092EE10F8AE2C58F03F0BDC2441CE066856F868E5B3A757DD79703784B4DBB34EEB74323578B253C2C14E4CBE344BF1AF4FADD3FDCDFBA681E1CFDF4F64D67C01871E8274281131C9820FF5F3CF5B7CF7FF54D861C81055A57E1050662A68D83CF21D02177120AC81E29089A608105250EC15F73A474F82174218E36220929926041053532B8218BFE79864206196820E490426E60E491135A93A18D285E68A1533B62F1E28F411239E491480AF8C79223DC98238D0B42B980702E0200A46DDD1996A4855C8A702282708639827E2BA249259A0016B666095F96F0669C4ECE29E78AD4DCF9C38B9DC538A09272C250419339F6496835671E0A40746A6AC9280E7F461A6855362DC0D67C698E28237E6C7EDA420190029AE151F08CDAE2A5A5E277EA9670CA40018EAEAA0A2A5707616AAA0133F2D9E80C8F2278E289A7A5E41CAD79DA4A2CAAC6024141FF01CA2E9B88660FD67A1FAEAECAB06C933828C78AB0D2160B66B8318CDB26832012F62D89B976B51D8CF28A48AD827DDA8B6884E9EE8B61AFEF5EF36FA2F9DE4A2FC1541D0CF088EA0A4A70BFA5388CB09E0044CCEFC4058B0761881ADBCBCBC799862CF279B8451041" & _
			"6F2CC366B2C8FFAADC72CB28BCDC30B40850A7B2CA3DBC56B3C027BFA8F3CE3DBB0C7457422FBA7304CFFA9CF1D137DF3634CFD620479DCD0C258DC2D2FF2489F53C5A03C0F55E5E439D35CE53337D99D58B7EBD1FDA4A13BDB680579B6D30DD71530D46DDA639C2F6D672EFDDB6DDCB2439361065F70D88E18133C8776C6F0FADB8348FDF2C39E49B559E14E37A3B3EF8E4D8A53D79ABE29857FC34E0A0EFA3B94F3FA35E3A2BABCBD4BAD86A1341FACD23768EB8A66EFB32BBEE9ECF8E3B7EC00B2EFCE64F7FF73AE59F2F8F9D5ACADBCE3BE177FFDC3B2FB197653DF51A4D9FBAF46F659FC3EDB28FF780F8E57AEFBC8AE643CC7D22A3155F78FBF85D5F47FCB59F1DE2E24F630C76FFF9E2DFFEE4622EF18C282AFF2BE0126687C093F90D001080805A2CE3403AA0208213D44B059F97A90D1AB0831E148F0243088611EA20040021F904090A0019002C2C000C0036006A000005FF60268E64390268AAA266EBBEB0B8CE406CDF24ADD778EFEE349F701408A00A05A0CA85696286A4E231A964B59C4FA82C85EC168A5EE4F2EAD4AAC2DF007A6CC20EA52B829C00D7C1DCBD7A6A4E37EEEE65797E334585832B364D3E7A2A868C298959388F556C238A97181717938795882598224D9B9D2A0CA8A9AA762DA519A4171313367AAAB60CAC26AEB0B238330B0B2A0303B9259B9B4DB2BD37BFC129C3C524C717C9CABECF03C0C0C3C0334C180D0D9BCA131514D728DCDAEADE64E1E3CA16053E28C00EF70EDACEDD3C6D5818E486D45B802F9FB68156FC61092864E08103FAF459F217CE828565F400007B18F120A4174D2A5E9CD55063478F095FFF909355C1824093279DA574B1728245332605E814C0CF87458C5006EEE4E9CCE7482D39607AC461F126D2A41D67BE68EAB2079087580FB483E134A38EAC0FB74EAD00430782B368D3A64DC0B62D5B562D6D98554BF7AC5BB7ACBAB6181835455DB47703B73D1B2D03DF882AFEDA151C987090122824489E8C4281650533D60EAEAB2266CAC8932557BE9C19F066BA9D4F4A4DCD0F85CED02816B375AC22B46DCAFD4EA49098E2356ED90968A7B87D5B6A5215961F3CE09D180168C93A3D7F2CBB22F972947E9D03081D5DF574AB00EEF1BE8C79B736E5ADBFBF14EF913CEB05E865AA0FBAC3BDD27BC69F1AAE4FFABE83FCFAED875A0A6F8112E00F000C8842FF81131D98145D81A1608001001E189B5A1102306185015EA859811316E8208210B625A101228E688287A6818862021CEAC7227027A6A8E283189AA8E18B313E35230278ED68E38D3FD228248CB9A95824903A8688E48DBAFD15A4933DD22765933C266961828A6538A4834B0257E0973272A918934192E9A3995DDEB5E0935BD215410413D669E79D6F56499D9C74DEE9E78600A8095E5A80CE39A70E76E6A9654684520880A111205AA7A238358A02A4ABED08A8A072B159A8A199261A289C8CA2F5E9A18BEAB629A9839AEA28A6A96EB1AA9E02BA7A29A8B1AA3AE9A855B2786AA4B9CABA2BA79069FA2AAE19CD1AACAEBFD27A22A5CCEC782BAA2F297B4DBAB3CBAE282DAFD9EA7A2BAD49591BEDA7E07ACBEDB5C7525B92B89D625BADA3C46A5BA0BAEF42DBE9BCC0E2C46E0C8AD2BB2EBCAC52876FB9C2DA1BEDC0DD6ABBAFC048FA9B2CC0BD8E0A28C1FB2DFCC29B13275CACC5D4BD19EFC5DB7EBC85C70183C771B1CA9DDC2EC4CBA29032CBFAC20CB2726396FCAEC3283F5033C5E11A8073521982396A900806BDA5D1DA8AD521B7E1E457D89A0536AD3194284000015BCAF15CA6D5583FA035D46E4E3D22C92243A99BD266770C4A080021F904090A0018002C1E000E00400068000005FF20268E64699E24A0AEAC8ABE702C8B6D0DCC788EDAFCADFFB89E0D487C0502AA4241C82A3A47C7E492E97A3A59CA6CE1A85536AD406C97DBFD8271D116614D48F3CE39F78ADD46F6E0687BEDC8D7B7F033722C7D822B80328554668728898A558C8D7E0C9495966F91922C969C0C984535348627350B0B2C03039F44A1188B292DA6A8AA4339351212A6B2000ABD0A9023B3BA0BA9BBAF33B7B9BA2ABEBF3EB02AC5BAD2AD41BCBE2AB8C33516161516262AA60EE40EDB00BB3ACCD800DACB2DDDDDE1E80BE5E6EFE93FC9B8B82A0DFF00E3810B46EFC08161E7805963C18F9F3F80FF04C2326510E13B85FADA2963011162B70913440D132020E1B32B1A8DFF01E818B0024891BA489A04936DE34A960D40EA9C5080C23F710B64BE83537317CE9C3B2778FB494F683E9A294FDD3C1AD102488840CF118DFA906A838F13B0D2D37AA6A854AF4927B030C896ED2A755CA7E24CBBB6ADDB5A61A2AAAC71E1C2CE6E0802234840B8B061C3C76098DDDBA2EFDF0A82071F9E4C38F18BC55203830CDCB7B35F9D91291F36604045608C3BF46646B0198167C7A0058B364CDA3402D4A454DB06E99973E7D68167173E0D80B83577BB344FE8EDFAF784D0C21310376EAB4586EB197A62C7CE1CFAE4DA00C0535FB862BBB7EDD7BBCBA60C5EFCED9379598064D15783FDFBF63B6CD8CF7F436500F6D9861B792ACCB7427DF8DDD75FFF7FFF0558DC7B805CD5807ADE1DA6C275B68D77868414AE37D985196408E121DDF4256285880180E183035AE18D890F46161C65200A081F1EDF3CC2C38A1A02D28D8E36F03822235921F4C091482699240B3DE251E4304A46892493431EF2A445589AD42254597689503599B8A251434086995B43FDE868666A54CE98E27F6BE6D6A6646F26B0659827D259980A70C6999B8C7AFED7A79F0401EAE69E000C4AA89886066A67A28F2ECA68A38EF219E9A279A2F8A8A266E6194104A4852A6AA896DE0915A09F8EAA6A69909A8A5264E07D" & _
			"FA690DA2967A232022C62A2BADA4B67A6B593122A0EBAC27A950ABAF99E4CAAAAC1100636CAF9C020BEBB2BBFEFAACF4AD44063B6CB3D686C76AB44F28AB02B32D3E0B1EB8AC684B2DB18A797BEEA5501D4BEEAFF3BCEBAA0CE6AECBAD35F6D29BD1B6F78AD9EF5600FB5BEFB7F002AB6BC0A20CAC30B50C0B8C70C4A9150C97C3F1EA1BF0B5C83AE92BBBFF4E6C7075FF817CB1C85B95BC6FC8D802AB72C41CA30BCAC72B9FDC32542F8F7CF0CD56580A1ECCDEF21C2EA43FEB5C42CC094365A9CC9705DDB1D290325D31CA3D037024C6D5613DF3D554DBFC74BA470A9A74C82683FD80D81413445AD9797D6874BB6ECF1C77D573C7F787CB8F3235339843FFA7B7A4D54100016147A6DD29008213FE80E178468D28E0C8382E35E404F14D399B2D84000021F904090A001C002C1E000E00400068000005FF20278E64699E24A0AEAC8ABE702C8B6D0DCC788EDAFCADFFB89E0D487C0502AA4241C82A3A47C7E492E97A3A59CA6CE1A85536AD406C97DBFD8271D116614D48F3CE39F78ADD46F6E0687BEDC8D7B7F033722C7D822B80328554668728898A558C8D7E0C9495966F91922C969C0C98993B2D0B0B2C03039FA02635A3A5A743A927ADA3A3A6AC7FB0A12AB5B3BB35B8302AA30EC30EB3A400B6BF2FC10BC4C5B3CC90CA25CC0707C6C68BD323D5D7D8B6D24518E31861C8DFD08667E4E53FCCE8C7E144EC4FCC02F702C9EBE4F5E7F8F9C7C0D03BF32E9D407E04CF65F3F1645C3F16D62246F435AF5D911A122552D471E182C3111F65B04040B26482932853FF9ED4F6A263480E2F81AD286952A54D9626264C70D9AE631000348322B06993A63C123A798AF0394385509A44551A657842A7CE711D998A04FA9464D4944E111C1D617502D6AC3FBB7AFDBA92EB5811052894EDD8A0C1D9506A6BDA34C0D7405892632D54987BA1EEDD585CF346EDEB37B158AA39ADB28BC90D80040980B96AD8CC7983E7CF9EDB6E0EFB9643D9C916A959C6FC9824E7CEA03F8BD6401A72099D152C184EAD6A75E60C1984B255017CE463143A2DE8B6CB5BF5E5DFC1830E07507CE6F113CACBEA0C35EA3238B7366C8EA60E3C034E0ED9B5735FE03D1EF81AE26993AF5E1AB70599A31E3CA891D9D86516B311671E78C84DA01C7E0BE8C7DFFF63FE490060022A8C575D663028772062F9ED07405DB55DE6A1040BD530E1752858781F86096AC821781FB6F71D0B239626C285BD5DA6E0860DFCF5180B19EAE7A38FC6C9885E05A1D8A8628E8EAD92E28F3F06691B0A155040430B2D3A681D5428B150E587E79558C0945AB6681C966DA9B0A5875D2E0380026C2A602688E98C39145142F4D3A69BAB8578E59C37DD61450D2E1E736758D33102289CB60CCA55A1B05041269D4F1EE2A85E906EA3A3705F0909C8A5D2651AA9A18E911441048C95DA970A6DE1C2E9A8A69A8A2A849F2644135F2A8C3A6A0D8CBDAAE9158ED10A80AD11E07A2A00A946A2A3AFC04AA342AEC4C29AC9B18D254BD5B2C316BB69FEAFD1DA3A16B5BAC67A11B6B56A1B29B7CDEE9A5649C88A2B13B3D6FE09EEAFEAAAC9AEB309312BED4FBEB6DB8FBDF16E952FBD60907B6F0EE4EACB6BBAB77AABDABFE6360540BA0D4FC9B0C2F8661B31070503EC2EC2C1525CD9C47008DCAFC320E3D16DC2E6941C70B9F05E9CF1C5A1B485B23B0F3766F0B732779CB2CD1AAF9CB3CB35771B32CB33EBF0B2C75B9DE42BD02ABBAB74634CF30CB39AAFDE1CC3D14357DD33C95223ADA67E4D572CB4BB6077BDF3D8DFEAD796D515174D840A6AC3CA36D76E9BD3A7CF2A4DADF5DC3FDDFDF62B78ABB0E2B71B390DEBE0DB100C0004109C7463E20E33EEB88690279DB7D7CAECBD75E58815CE792E2D84000021F904090A0013002C22000C003C006A000005FFE0248E64699640AAAEE9E9BE703CB23420DFF859EF76EECBBCDA6F780A0452854270456C4E8C48E5B2E51CAE92D882319B64567357EE96EBFDC6A02C829A80DE99656DD59A7DE4BDCF759A719F67DD61712B7C812A7F2F84536586258889548B8C7D0C9394956E90912B959B0C9798282C0B0B2B03039E9F33A1A32AA5A7A813A403A2A2A5A23424548A66B1B30BB5AB8AB9858B29A20EC70EBDC5ABB82ACA3D77CBC8C9B3CB8FB0CED5D06FCB0707BDCFD7291212CF86DDDFE0B6C322E3E5DAE700BD0202E1DBED00E4E67FCBA2F4F626DCED8BE7AF1E3C50A2F42D38762D9ABC05FF0E364BF88EE13D7E0F078222C75142438CEA3EE2EB484EE41B6F2853FF1ED0854DA321952A59F663863105829B0812E8DCC9D3CB4C934D56E0CCC9B3A8CF8C34AB081D8AB3A8D39D2B8C39000A4605D3A64F9D465D38F56240151E3C34BB7A35ABD904298EAD83B122EC58B243CF664D4B8D6A0A050A52B8C50637EE530380033BE54098835D0078F58AE5DBF766D6C0828B1636EC151BDEC4001A34086BB33151A78069CCAD7CF7720ACD9C0178FE5C34348BD12E4A9FD64C3BEC500D1ACA16DDB021854E61B75EC8CE4C1BB587DBB9993AE5ED1B6D0F57A91E3CC05CBC73D80C1952E0DEAE81B7F70DBF0184B702403A75DAD63D60D7CEBDFB77F0CEC7FFA0515C7367C59DFDF6140FB5325B16F535701F00A9E9B6DF7E3EB8430EFF3D3410D6D97AAA2967147F54C5960F470CB2E06084101AD89F7C0922451249937528E181CE91D7CB881D95985D84FA7D98E27C484DA38E7D2C78D81C8855F5622338382E15E38E33E2309C236F0D0900603C0281585E8E6C931F56E13159E40DA56116A28E4B1A50A10E4F6A591597AE91C79293647AE99F707ED098E697F1C0A515856BC649D69C4D6232A587E1E509C99E27CA08A71380461001648806D6DCA0E45D6568A2892E5A27" & _
			"1153BA66A8A1344026E99F302260E9A5992A4AA79D377D8AA9945DBAE627A19D9A1A8138A9AAB96AA338B96A520AAA5EA954AB6A5EFA2A695D6EFA45A5BD82BA26AEA2CE8A25AF29F87A98A6A3B20AADB393E2932BC6A3604E6BAC91C1461B54B7D486786DB56CDA4AAEB5B2EA4A29B8BF9237EEAE9F628BAEB0DF9A2B6EBAF282626F55EF0E4BE7A9EEE27B2E98E1014C63BFBB16DC2EBF02EFF2EFC2DC22ECAFC2D8224B2FAB140F6CB1B71327E0DAA01B2B1BA24E1F931BB2BABB120972B72257A5B2C92CA34CA37412FF57F3BA3437BCECCD214AD7A7CC361B60F0B73EC70774B94243BCEE9CDF32BDF4844D43BD6E7051CF962F3E543F6DF5C0AFE00301043A4977B59E007C1DF6036373EA74D7CBAECDF6B259BF1DC30E21000021F90405320013002C220010003C0066000005FFE0248E64699640AAAEE9E9BE703CB23420DFF859EF76EECBBCDA6FA8AB150A41A272B23B2697BEE03110383A59509CB440B522B159608D4026509F61D8AE6C0EA0D3AE2075EE16C25F727A9D76C707FF2D7D45806F82332C0C898A8B897C8628888C928E8F9029141429029B0297992A95712A989A9C9E2BA183000B0B0303ACACAEACA88722B4702BB1AFB0B20BB74C3DBFB8ABB00EC60EB0BE3D24B9B081C3C9C7C8CECB8729C9CF69D7B007DD07D8D5B6001212E07DDBACDEDFD42629E4E677E8C9F3D9E2EFECF1C4F3F4E1C0F7B3FDC26CE32400603B62F78CD5D3468CA04148AC123A58080D9F28721825506408EF62468D01D3A81B794018B08E8248FFAA33296FA392150862224840B3A64D5A2D43BE542173A6CD9F38F52913C8B3A7CC9F486B3653A833074CA33193265D3AB1A9B8141E3C30030015AAD4AF0952187B280AABD6435D8D82952A769A4B600A14981597B6A7540378F322E5C097C3DB1471E702AB7B34695EBD3FFBFA0D0938AE5C000D1A644D4138AA610334D83206E0F871E4C95C2BDFC5CC42B3A8C09023ABCEDA538306AF3F376C484133D00E359C3DABFEECA1F56BB5B16703A81DCCCEC1070F50EFA68C206B860C295C4BD720BBFA06E2C487A440AE5C3573E7D0014C776D5D36F6B05655A5D81D99B959E676810E579AFEE00AF60DDC03000DFBE6FCEC4E8D83D12634F0C5DC73F015E61FFF805108480E812C18181A82A1C5B7207ADA09F5D1478A51D81F7D0C0698CC86197518DE87E7BD254A34C7ECD31E0B1FD2465F862C8E35CF8B4F59889E7F0DA2464835095A461C5E218AE123215BC50800911806D8998A9028891794073D591F5AC00D495A86268921E5963F5012E09754E6931652329649D499F215F948905982D8642A70EA98E2953B4115410487F599579A788659A14C7BFAE927A086243825007BEE49C361880AA228698D46F0E89FF3A979C3A429549A4D0A90661AA897322DEA29904B62EA669EA552DAE846A092B62A119C32FAEA668BCEDA604FA6DE8A5BA8BA6E3A68AF8E36156BAE73D29A6AAF5D1681ACA607855A6C99B146BA93AEB496065AED7FC93688ADA6DBF2B844ACC415EBADACDD0ACA64A7D99E6BEDB82A94DB6E80CF8E6A89A8E6D28B2EB47EC84B6DAAEF420168BE62D47BCE7C8BFE6B304334257C65B8E90A1CEF8CC2AE6B2F6E3206BB95C5C320B770C1FB5E0C89C7216B01B0A812237767867811ACACCA3B461C43AC2E6788A6C819536CB37C3BDDBC93983BAF971FCEC6294BDC8BA9640801043421C76F25292CDDF4034FBFC9ADC6496FE573D60102CD35C62C8400003B"

	_GDIPlus_Startup()
	Local $hImage = _GDIPlus_BitmapCreateFromMemory(Binary($bGIF))

	Local $hGUI = GUICreate("GDI+", _GDIPlus_ImageGetWidth($hImage), _GDIPlus_ImageGetHeight($hImage))
	GUISetState(@SW_SHOW)
	Local $hGraphic = _GDIPlus_GraphicsCreateFromHWND($hGUI)

	Local Const $GDIP_PROPERTYTAGFRAMEDELAY = 0x5100
	Local $aFrameDelay = _GDIPlus_ImageGetPropertyItem($hImage, $GDIP_PROPERTYTAGFRAMEDELAY)
	Local $iFrameCnt = _GDIPlus_ImageGetFrameCount($hImage, $GDIP_FRAMEDIMENSION_TIME)

	Local $iFrameIndex = 0
	Local $iTimer = TimerInit()
	_GDIPlus_GraphicsClear($hGraphic, 0xFF44CCFF)
	_GDIPlus_GraphicsDrawImage($hGraphic, $hImage, 0, 0)
	Do
		If TimerDiff($iTimer) >= $aFrameDelay[$iFrameIndex + 1] * 10 Then
			$iTimer = TimerInit()
			$iFrameIndex = ($iFrameIndex < ($iFrameCnt - 1)) ? ($iFrameIndex + 1) : 0
			_GDIPlus_ImageSelectActiveFrame($hImage, $GDIP_FRAMEDIMENSION_TIME, $iFrameIndex)
			_GDIPlus_GraphicsClear($hGraphic, 0xFF44CCFF)
			_GDIPlus_GraphicsDrawImage($hGraphic, $hImage, 0, 0)
		EndIf
	Until GUIGetMsg() = $GUI_EVENT_CLOSE

	_GDIPlus_ImageDispose($hImage)
	_GDIPlus_GraphicsDispose($hGraphic)
	_GDIPlus_Shutdown()
EndFunc   ;==>Example
