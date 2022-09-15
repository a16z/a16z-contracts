This is a restatement of the Licences from https://github.com/a16z/a16z-contracts/tree/master/arweave_upload/licenses, which are in PDF format.

These are restated in ProseObject format.  They deduplicate very large portions of the text of the various licenses by using one license (ECR.md) as a base and expressing the other licenses as differences on the base.  

The versions are rendered with a tiny bit of perl/PHP done by Primavera De Filippi.  They can be seen here <a href="http://www.commonaccord.org/index.php?action=list&file=G/a16z-contracts/PrOb/licenses/">http://www.commonaccord.org/index.php?action=list&file=G/a16z-contracts/PrOb/licenses/</a>

The Defined Terms are parameterized so that they link to the definitions. This is done with a library at /Sec/_.md.

The cross-references in the text (e.g., Section 1.2) are also parameterized as links to the target. 

There are a number of questions or anomalies in the various texts that are noted here. (Collected from the .md files so they are now all in one place.)  These could be re-expressed as GitHub "Issues".

Sec/Misc/LawAndForum/0.md:

CodersNote=Made this large "Governing Law & Arbitration" Section into a separate object (file) which is referenced in the forms. Could have called it Sec/Misc/GoverningLawAndArbitration/ but expressed it a bit more generally.  Also did this for HateSpeech.  Eventually, would likely do it for all Sections, creating a library from which the forms are formed, and providing subject-specific targets for improvement, commentary, recomposition and the like.  For fun: you can drill down in a document and render parts of it <a href="http://www.commonaccord.org/index.php?action=doc&file=G/a16z-contracts/PrOb/licenses/ECR.md&key=Other.LawAndForum.Sec">http://www.commonaccord.org/index.php?action=doc&file=G/a16z-contracts/PrOb/licenses/ECR.md&key=Other.LawAndForum.Sec</a>

CodersNote=Parameterized the Arbitration Seat and the Choice of Law as {ArbitrationSeat.cl} and {Law.State.the} (!).  The parameters are fulfilled (dereferenced) in ECR.md with the original choices (NY or plaintiff county, and NY law).  These choices are defaults and can be overridden in instances.

LawyersNote=What happens to choice of seat for the arbitration if the plaintiff is outside the US? 

CCO.md:

LawyersNote=The CC0 Agreement is referenced twice, once with a link in Section 1.1 and second time somewhat differently in Section 2.2.  Is that necessary?  

CodersNote=The organization of this CC0 is in 2 Sections, while the other licenses are organized in 3 Sections. The difference is that in this CC0 license, the "Disclaimers" Section (# 2 in the other licenses) is included in the "Grant" Section (# 1) as Section 1.3.  It could be renumbered as Section 2, which would make it parallel the other licenses.  

LawyersNote=In Section 1.2, the "if the age of lawfully capacity" (a) reads oddly and (b) textually the "if" could be construed to modify all that comes before it (including the 18 year requirement). 

LawyersNote="{_Restricted_Parties}" is defined but not otherwise used. In Section 0 - "we" and "our" are defined, but not used.

LawyersNote=Note that "you" and "your" are used but not defined. InitCap "You", "Your" and "Parties are used (once each) in the Governing Law & Arbitration Section, but are not defined, and are otherwise used in lower case. In this, we have parameterized the InitCap versions but with a red color.  These should either be removed or the terms should be defined and the lower-case usages should be conformed.  

LawyersNote=We have transcluded most of Section 1.3 from the equivalent at ECR 2.5. In 1.3.3.sec (ECR.2.5.3.sec), "creator" is used in uncapitalized form, we have parametrized and capitalized it.

LawyersNote=In Section 1.3.2 (ECR.2.5.2), "Template Provider Entities" is defined but not otherwise used.


ECR.md:

CodersNote=In Section 2.5, there is a superfluous "and" before item (ii).  

LawyersNote=In Section 2.3 "therefor" should be "therefore". 

LawyersNote=In Section 3.3. "These Terms constitutes ...."  

LawyersNote=In Section 2.2, "Project NFT" where parallel phrases use "Project NFTs".  

LawyersNote=In Section 2.2. "SOME JURISDICTIONS)" (a stray close-paren).  

LawyersNote=In Section 2.3 "The value of the Project NFTs is subjective, have no inherent value ...." ("is" and "have"??)

LawyersNote=In Section 1.2.2, "Other NFT Media" is used but not defined. Should it be "Other Project NFT Media"?  

LawyersNote=In Sections 1.1, 1.2, 1.3, "NFT Media Derivatives" is used but not defined except as part of "Other NFT Media Derivatives" and "Your NFT Media Derivatives".

PR.md:

CodersNotes=In Section 1.1. in the PR license there is an extra "]" in "... in Section 3.2 below)] ...."  We incorporate the correct language from PR_HS and do not put the extraneous "]" into the text here. 

CodersNote=Section 3.4 (Governing Law & Arbitration) lost its number in the PDF (but not the Word .docx).  The number is included in this. 

PR.md, NECR.md, NECR_HS.md:

CodersNote=In three forms, PR.md, NECR.md, NECR_HS.md, Section 2.3 (Assumption of Risk) is missing a period (".") at the end.  In PDF and .docx versions.  In the other forms there is a period.  The PrOb versions all have the period.

CodersNote=In some of the forms, part of Section 3.4 (Governing Law) is in bold, but it is plain text in some other forms. Have made it bold in all. 

