#!/usr/bin/env lua
-- LICENSE-AGPL.lua
-- Qompass AI Hyprland Config (auto-converted by h2l)
-- Copyright (C) 2026 Qompass AI, All rights reserved
-- NOTE: Review FIXME comments before use

-- FIXME: GNU AFFERO GENERAL PUBLIC LICENSE
-- FIXME: Version 3, 19 November 2007

-- FIXME: Copyright (C) 2007 Free Software Foundation, Inc. <https://fsf.org/>
-- FIXME: Everyone is permitted to copy and distribute verbatim copies
-- FIXME: of this license document, but changing it is not allowed.

-- FIXME: Preamble

-- FIXME: The GNU Affero General Public License is a free, copyleft license for
-- FIXME: software and other kinds of works, specifically designed to ensure
-- FIXME: cooperation with the community in the case of network server software.

-- FIXME: The licenses for most software and other practical works are designed
-- FIXME: to take away your freedom to share and change the works.  By contrast,
-- FIXME: our General Public Licenses are intended to guarantee your freedom to
-- FIXME: share and change all versions of a program--to make sure it remains free
-- FIXME: software for all its users.

-- FIXME: When we speak of free software, we are referring to freedom, not
-- FIXME: price.  Our General Public Licenses are designed to make sure that you
-- FIXME: have the freedom to distribute copies of free software (and charge for
-- FIXME: them if you wish), that you receive source code or can get it if you
-- FIXME: want it, that you can change the software or use pieces of it in new
-- FIXME: free programs, and that you know you can do these things.

-- FIXME: Developers that use our General Public Licenses protect your rights
-- FIXME: with two steps: (1) assert copyright on the software, and (2) offer
-- FIXME: you this License which gives you legal permission to copy, distribute
-- FIXME: and/or modify the software.

-- FIXME: A secondary benefit of defending all users' freedom is that
-- FIXME: improvements made in alternate versions of the program, if they
-- FIXME: receive widespread use, become available for other developers to
-- FIXME: incorporate.  Many developers of free software are heartened and
-- FIXME: encouraged by the resulting cooperation.  However, in the case of
-- FIXME: software used on network servers, this result may fail to come about.
-- FIXME: The GNU General Public License permits making a modified version and
-- FIXME: letting the public access it on a server without ever releasing its
-- FIXME: source code to the public.

-- FIXME: The GNU Affero General Public License is designed specifically to
-- FIXME: ensure that, in such cases, the modified source code becomes available
-- FIXME: to the community.  It requires the operator of a network server to
-- FIXME: provide the source code of the modified version running there to the
-- FIXME: users of that server.  Therefore, public use of a modified version, on
-- FIXME: a publicly accessible server, gives the public access to the source
-- FIXME: code of the modified version.

-- FIXME: An older license, called the Affero General Public License and
-- FIXME: published by Affero, was designed to accomplish similar goals.  This is
-- FIXME: a different license, not a version of the Affero GPL, but Affero has
-- FIXME: released a new version of the Affero GPL which permits relicensing under
-- FIXME: this license.

-- FIXME: The precise terms and conditions for copying, distribution and
-- FIXME: modification follow.

-- FIXME: TERMS AND CONDITIONS

-- FIXME: 0. Definitions.

-- FIXME: "This License" refers to version 3 of the GNU Affero General Public License.

-- FIXME: "Copyright" also means copyright-like laws that apply to other kinds of
-- FIXME: works, such as semiconductor masks.

-- FIXME: "The Program" refers to any copyrightable work licensed under this
-- FIXME: License.  Each licensee is addressed as "you".  "Licensees" and
-- FIXME: "recipients" may be individuals or organizations.

-- FIXME: To "modify" a work means to copy from or adapt all or part of the work
-- FIXME: in a fashion requiring copyright permission, other than the making of an
-- FIXME: exact copy.  The resulting work is called a "modified version" of the
-- FIXME: earlier work or a work "based on" the earlier work.

-- FIXME: A "covered work" means either the unmodified Program or a work based
-- FIXME: on the Program.

-- FIXME: To "propagate" a work means to do anything with it that, without
-- FIXME: permission, would make you directly or secondarily liable for
-- FIXME: infringement under applicable copyright law, except executing it on a
-- FIXME: computer or modifying a private copy.  Propagation includes copying,
-- FIXME: distribution (with or without modification), making available to the
-- FIXME: public, and in some countries other activities as well.

-- FIXME: To "convey" a work means any kind of propagation that enables other
-- FIXME: parties to make or receive copies.  Mere interaction with a user through
-- FIXME: a computer network, with no transfer of a copy, is not conveying.

-- FIXME: An interactive user interface displays "Appropriate Legal Notices"
-- FIXME: to the extent that it includes a convenient and prominently visible
-- FIXME: feature that (1) displays an appropriate copyright notice, and (2)
-- FIXME: tells the user that there is no warranty for the work (except to the
-- FIXME: extent that warranties are provided), that licensees may convey the
-- FIXME: work under this License, and how to view a copy of this License.  If
-- FIXME: the interface presents a list of user commands or options, such as a
-- FIXME: menu, a prominent item in the list meets this criterion.

-- FIXME: 1. Source Code.

-- FIXME: The "source code" for a work means the preferred form of the work
-- FIXME: for making modifications to it.  "Object code" means any non-source
-- FIXME: form of a work.

-- FIXME: A "Standard Interface" means an interface that either is an official
-- FIXME: standard defined by a recognized standards body, or, in the case of
-- FIXME: interfaces specified for a particular programming language, one that
-- FIXME: is widely used among developers working in that language.

-- FIXME: The "System Libraries" of an executable work include anything, other
-- FIXME: than the work as a whole, that (a) is included in the normal form of
-- FIXME: packaging a Major Component, but which is not part of that Major
-- FIXME: Component, and (b) serves only to enable use of the work with that
-- FIXME: Major Component, or to implement a Standard Interface for which an
-- FIXME: implementation is available to the public in source code form.  A
-- FIXME: "Major Component", in this context, means a major essential component
-- FIXME: (kernel, window system, and so on) of the specific operating system
-- FIXME: (if any) on which the executable work runs, or a compiler used to
-- FIXME: produce the work, or an object code interpreter used to run it.

-- FIXME: The "Corresponding Source" for a work in object code form means all
-- FIXME: the source code needed to generate, install, and (for an executable
-- FIXME: work) run the object code and to modify the work, including scripts to
-- FIXME: control those activities.  However, it does not include the work's
-- FIXME: System Libraries, or general-purpose tools or generally available free
-- FIXME: programs which are used unmodified in performing those activities but
-- FIXME: which are not part of the work.  For example, Corresponding Source
-- FIXME: includes interface definition files associated with source files for
-- FIXME: the work, and the source code for shared libraries and dynamically
-- FIXME: linked subprograms that the work is specifically designed to require,
-- FIXME: such as by intimate data communication or control flow between those
-- FIXME: subprograms and other parts of the work.

-- FIXME: The Corresponding Source need not include anything that users
-- FIXME: can regenerate automatically from other parts of the Corresponding
-- FIXME: Source.

-- FIXME: The Corresponding Source for a work in source code form is that
-- FIXME: same work.

-- FIXME: 2. Basic Permissions.

-- FIXME: All rights granted under this License are granted for the term of
-- FIXME: copyright on the Program, and are irrevocable provided the stated
-- FIXME: conditions are met.  This License explicitly affirms your unlimited
-- FIXME: permission to run the unmodified Program.  The output from running a
-- FIXME: covered work is covered by this License only if the output, given its
-- FIXME: content, constitutes a covered work.  This License acknowledges your
-- FIXME: rights of fair use or other equivalent, as provided by copyright law.

-- FIXME: You may make, run and propagate covered works that you do not
-- FIXME: convey, without conditions so long as your license otherwise remains
-- FIXME: in force.  You may convey covered works to others for the sole purpose
-- FIXME: of having them make modifications exclusively for you, or provide you
-- FIXME: with facilities for running those works, provided that you comply with
-- FIXME: the terms of this License in conveying all material for which you do
-- FIXME: not control copyright.  Those thus making or running the covered works
-- FIXME: for you must do so exclusively on your behalf, under your direction
-- FIXME: and control, on terms that prohibit them from making any copies of
-- FIXME: your copyrighted material outside their relationship with you.

-- FIXME: Conveying under any other circumstances is permitted solely under
-- FIXME: the conditions stated below.  Sublicensing is not allowed; section 10
-- FIXME: makes it unnecessary.

-- FIXME: 3. Protecting Users' Legal Rights From Anti-Circumvention Law.

-- FIXME: No covered work shall be deemed part of an effective technological
-- FIXME: measure under any applicable law fulfilling obligations under article
-- FIXME: 11 of the WIPO copyright treaty adopted on 20 December 1996, or
-- FIXME: similar laws prohibiting or restricting circumvention of such
-- FIXME: measures.

-- FIXME: When you convey a covered work, you waive any legal power to forbid
-- FIXME: circumvention of technological measures to the extent such circumvention
-- FIXME: is effected by exercising rights under this License with respect to
-- FIXME: the covered work, and you disclaim any intention to limit operation or
-- FIXME: modification of the work as a means of enforcing, against the work's
-- FIXME: users, your or third parties' legal rights to forbid circumvention of
-- FIXME: technological measures.

-- FIXME: 4. Conveying Verbatim Copies.

-- FIXME: You may convey verbatim copies of the Program's source code as you
-- FIXME: receive it, in any medium, provided that you conspicuously and
-- FIXME: appropriately publish on each copy an appropriate copyright notice;
-- FIXME: keep intact all notices stating that this License and any
-- FIXME: non-permissive terms added in accord with section 7 apply to the code;
-- FIXME: keep intact all notices of the absence of any warranty; and give all
-- FIXME: recipients a copy of this License along with the Program.

-- FIXME: You may charge any price or no price for each copy that you convey,
-- FIXME: and you may offer support or warranty protection for a fee.

-- FIXME: 5. Conveying Modified Source Versions.

-- FIXME: You may convey a work based on the Program, or the modifications to
-- FIXME: produce it from the Program, in the form of source code under the
-- FIXME: terms of section 4, provided that you also meet all of these conditions:

-- FIXME: a) The work must carry prominent notices stating that you modified
-- FIXME: it, and giving a relevant date.

-- FIXME: b) The work must carry prominent notices stating that it is
-- FIXME: released under this License and any conditions added under section
-- FIXME: 7.  This requirement modifies the requirement in section 4 to
-- FIXME: "keep intact all notices".

-- FIXME: c) You must license the entire work, as a whole, under this
-- FIXME: License to anyone who comes into possession of a copy.  This
-- FIXME: License will therefore apply, along with any applicable section 7
-- FIXME: additional terms, to the whole of the work, and all its parts,
-- FIXME: regardless of how they are packaged.  This License gives no
-- FIXME: permission to license the work in any other way, but it does not
-- FIXME: invalidate such permission if you have separately received it.

-- FIXME: d) If the work has interactive user interfaces, each must display
-- FIXME: Appropriate Legal Notices; however, if the Program has interactive
-- FIXME: interfaces that do not display Appropriate Legal Notices, your
-- FIXME: work need not make them do so.

-- FIXME: A compilation of a covered work with other separate and independent
-- FIXME: works, which are not by their nature extensions of the covered work,
-- FIXME: and which are not combined with it such as to form a larger program,
-- FIXME: in or on a volume of a storage or distribution medium, is called an
-- FIXME: "aggregate" if the compilation and its resulting copyright are not
-- FIXME: used to limit the access or legal rights of the compilation's users
-- FIXME: beyond what the individual works permit.  Inclusion of a covered work
-- FIXME: in an aggregate does not cause this License to apply to the other
-- FIXME: parts of the aggregate.

-- FIXME: 6. Conveying Non-Source Forms.

-- FIXME: You may convey a covered work in object code form under the terms
-- FIXME: of sections 4 and 5, provided that you also convey the
-- FIXME: machine-readable Corresponding Source under the terms of this License,
-- FIXME: in one of these ways:

-- FIXME: a) Convey the object code in, or embodied in, a physical product
-- FIXME: (including a physical distribution medium), accompanied by the
-- FIXME: Corresponding Source fixed on a durable physical medium
-- FIXME: customarily used for software interchange.

-- FIXME: b) Convey the object code in, or embodied in, a physical product
-- FIXME: (including a physical distribution medium), accompanied by a
-- FIXME: written offer, valid for at least three years and valid for as
-- FIXME: long as you offer spare parts or customer support for that product
-- FIXME: model, to give anyone who possesses the object code either (1) a
-- FIXME: copy of the Corresponding Source for all the software in the
-- FIXME: product that is covered by this License, on a durable physical
-- FIXME: medium customarily used for software interchange, for a price no
-- FIXME: more than your reasonable cost of physically performing this
-- FIXME: conveying of source, or (2) access to copy the
-- FIXME: Corresponding Source from a network server at no charge.

-- FIXME: c) Convey individual copies of the object code with a copy of the
-- FIXME: written offer to provide the Corresponding Source.  This
-- FIXME: alternative is allowed only occasionally and noncommercially, and
-- FIXME: only if you received the object code with such an offer, in accord
-- FIXME: with subsection 6b.

-- FIXME: d) Convey the object code by offering access from a designated
-- FIXME: place (gratis or for a charge), and offer equivalent access to the
-- FIXME: Corresponding Source in the same way through the same place at no
-- FIXME: further charge.  You need not require recipients to copy the
-- FIXME: Corresponding Source along with the object code.  If the place to
-- FIXME: copy the object code is a network server, the Corresponding Source
-- FIXME: may be on a different server (operated by you or a third party)
-- FIXME: that supports equivalent copying facilities, provided you maintain
-- FIXME: clear directions next to the object code saying where to find the
-- FIXME: Corresponding Source.  Regardless of what server hosts the
-- FIXME: Corresponding Source, you remain obligated to ensure that it is
-- FIXME: available for as long as needed to satisfy these requirements.

-- FIXME: e) Convey the object code using peer-to-peer transmission, provided
-- FIXME: you inform other peers where the object code and Corresponding
-- FIXME: Source of the work are being offered to the general public at no
-- FIXME: charge under subsection 6d.

-- FIXME: A separable portion of the object code, whose source code is excluded
-- FIXME: from the Corresponding Source as a System Library, need not be
-- FIXME: included in conveying the object code work.

-- FIXME: A "User Product" is either (1) a "consumer product", which means any
-- FIXME: tangible personal property which is normally used for personal, family,
-- FIXME: or household purposes, or (2) anything designed or sold for incorporation
-- FIXME: into a dwelling.  In determining whether a product is a consumer product,
-- FIXME: doubtful cases shall be resolved in favor of coverage.  For a particular
-- FIXME: product received by a particular user, "normally used" refers to a
-- FIXME: typical or common use of that class of product, regardless of the status
-- FIXME: of the particular user or of the way in which the particular user
-- FIXME: actually uses, or expects or is expected to use, the product.  A product
-- FIXME: is a consumer product regardless of whether the product has substantial
-- FIXME: commercial, industrial or non-consumer uses, unless such uses represent
-- FIXME: the only significant mode of use of the product.

-- FIXME: "Installation Information" for a User Product means any methods,
-- FIXME: procedures, authorization keys, or other information required to install
-- FIXME: and execute modified versions of a covered work in that User Product from
-- FIXME: a modified version of its Corresponding Source.  The information must
-- FIXME: suffice to ensure that the continued functioning of the modified object
-- FIXME: code is in no case prevented or interfered with solely because
-- FIXME: modification has been made.

-- FIXME: If you convey an object code work under this section in, or with, or
-- FIXME: specifically for use in, a User Product, and the conveying occurs as
-- FIXME: part of a transaction in which the right of possession and use of the
-- FIXME: User Product is transferred to the recipient in perpetuity or for a
-- FIXME: fixed term (regardless of how the transaction is characterized), the
-- FIXME: Corresponding Source conveyed under this section must be accompanied
-- FIXME: by the Installation Information.  But this requirement does not apply
-- FIXME: if neither you nor any third party retains the ability to install
-- FIXME: modified object code on the User Product (for example, the work has
-- FIXME: been installed in ROM).

-- FIXME: The requirement to provide Installation Information does not include a
-- FIXME: requirement to continue to provide support service, warranty, or updates
-- FIXME: for a work that has been modified or installed by the recipient, or for
-- FIXME: the User Product in which it has been modified or installed.  Access to a
-- FIXME: network may be denied when the modification itself materially and
-- FIXME: adversely affects the operation of the network or violates the rules and
-- FIXME: protocols for communication across the network.

-- FIXME: Corresponding Source conveyed, and Installation Information provided,
-- FIXME: in accord with this section must be in a format that is publicly
-- FIXME: documented (and with an implementation available to the public in
-- FIXME: source code form), and must require no special password or key for
-- FIXME: unpacking, reading or copying.

-- FIXME: 7. Additional Terms.

-- FIXME: "Additional permissions" are terms that supplement the terms of this
-- FIXME: License by making exceptions from one or more of its conditions.
-- FIXME: Additional permissions that are applicable to the entire Program shall
-- FIXME: be treated as though they were included in this License, to the extent
-- FIXME: that they are valid under applicable law.  If additional permissions
-- FIXME: apply only to part of the Program, that part may be used separately
-- FIXME: under those permissions, but the entire Program remains governed by
-- FIXME: this License without regard to the additional permissions.

-- FIXME: When you convey a copy of a covered work, you may at your option
-- FIXME: remove any additional permissions from that copy, or from any part of
-- FIXME: it.  (Additional permissions may be written to require their own
-- FIXME: removal in certain cases when you modify the work.)  You may place
-- FIXME: additional permissions on material, added by you to a covered work,
-- FIXME: for which you have or can give appropriate copyright permission.

-- FIXME: Notwithstanding any other provision of this License, for material you
-- FIXME: add to a covered work, you may (if authorized by the copyright holders of
-- FIXME: that material) supplement the terms of this License with terms:

-- FIXME: a) Disclaiming warranty or limiting liability differently from the
-- FIXME: terms of sections 15 and 16 of this License; or

-- FIXME: b) Requiring preservation of specified reasonable legal notices or
-- FIXME: author attributions in that material or in the Appropriate Legal
-- FIXME: Notices displayed by works containing it; or

-- FIXME: c) Prohibiting misrepresentation of the origin of that material, or
-- FIXME: requiring that modified versions of such material be marked in
-- FIXME: reasonable ways as different from the original version; or

-- FIXME: d) Limiting the use for publicity purposes of names of licensors or
-- FIXME: authors of the material; or

-- FIXME: e) Declining to grant rights under trademark law for use of some
-- FIXME: trade names, trademarks, or service marks; or

-- FIXME: f) Requiring indemnification of licensors and authors of that
-- FIXME: material by anyone who conveys the material (or modified versions of
-- FIXME: it) with contractual assumptions of liability to the recipient, for
-- FIXME: any liability that these contractual assumptions directly impose on
-- FIXME: those licensors and authors.

-- FIXME: All other non-permissive additional terms are considered "further
-- FIXME: restrictions" within the meaning of section 10.  If the Program as you
-- FIXME: received it, or any part of it, contains a notice stating that it is
-- FIXME: governed by this License along with a term that is a further
-- FIXME: restriction, you may remove that term.  If a license document contains
-- FIXME: a further restriction but permits relicensing or conveying under this
-- FIXME: License, you may add to a covered work material governed by the terms
-- FIXME: of that license document, provided that the further restriction does
-- FIXME: not survive such relicensing or conveying.

-- FIXME: If you add terms to a covered work in accord with this section, you
-- FIXME: must place, in the relevant source files, a statement of the
-- FIXME: additional terms that apply to those files, or a notice indicating
-- FIXME: where to find the applicable terms.

-- FIXME: Additional terms, permissive or non-permissive, may be stated in the
-- FIXME: form of a separately written license, or stated as exceptions;
-- FIXME: the above requirements apply either way.

-- FIXME: 8. Termination.

-- FIXME: You may not propagate or modify a covered work except as expressly
-- FIXME: provided under this License.  Any attempt otherwise to propagate or
-- FIXME: modify it is void, and will automatically terminate your rights under
-- FIXME: this License (including any patent licenses granted under the third
-- FIXME: paragraph of section 11).

-- FIXME: However, if you cease all violation of this License, then your
-- FIXME: license from a particular copyright holder is reinstated (a)
-- FIXME: provisionally, unless and until the copyright holder explicitly and
-- FIXME: finally terminates your license, and (b) permanently, if the copyright
-- FIXME: holder fails to notify you of the violation by some reasonable means
-- FIXME: prior to 60 days after the cessation.

-- FIXME: Moreover, your license from a particular copyright holder is
-- FIXME: reinstated permanently if the copyright holder notifies you of the
-- FIXME: violation by some reasonable means, this is the first time you have
-- FIXME: received notice of violation of this License (for any work) from that
-- FIXME: copyright holder, and you cure the violation prior to 30 days after
-- FIXME: your receipt of the notice.

-- FIXME: Termination of your rights under this section does not terminate the
-- FIXME: licenses of parties who have received copies or rights from you under
-- FIXME: this License.  If your rights have been terminated and not permanently
-- FIXME: reinstated, you do not qualify to receive new licenses for the same
-- FIXME: material under section 10.

-- FIXME: 9. Acceptance Not Required for Having Copies.

-- FIXME: You are not required to accept this License in order to receive or
-- FIXME: run a copy of the Program.  Ancillary propagation of a covered work
-- FIXME: occurring solely as a consequence of using peer-to-peer transmission
-- FIXME: to receive a copy likewise does not require acceptance.  However,
-- FIXME: nothing other than this License grants you permission to propagate or
-- FIXME: modify any covered work.  These actions infringe copyright if you do
-- FIXME: not accept this License.  Therefore, by modifying or propagating a
-- FIXME: covered work, you indicate your acceptance of this License to do so.

-- FIXME: 10. Automatic Licensing of Downstream Recipients.

-- FIXME: Each time you convey a covered work, the recipient automatically
-- FIXME: receives a license from the original licensors, to run, modify and
-- FIXME: propagate that work, subject to this License.  You are not responsible
-- FIXME: for enforcing compliance by third parties with this License.

-- FIXME: An "entity transaction" is a transaction transferring control of an
-- FIXME: organization, or substantially all assets of one, or subdividing an
-- FIXME: organization, or merging organizations.  If propagation of a covered
-- FIXME: work results from an entity transaction, each party to that
-- FIXME: transaction who receives a copy of the work also receives whatever
-- FIXME: licenses to the work the party's predecessor in interest had or could
-- FIXME: give under the previous paragraph, plus a right to possession of the
-- FIXME: Corresponding Source of the work from the predecessor in interest, if
-- FIXME: the predecessor has it or can get it with reasonable efforts.

-- FIXME: You may not impose any further restrictions on the exercise of the
-- FIXME: rights granted or affirmed under this License.  For example, you may
-- FIXME: not impose a license fee, royalty, or other charge for exercise of
-- FIXME: rights granted under this License, and you may not initiate litigation
-- FIXME: (including a cross-claim or counterclaim in a lawsuit) alleging that
-- FIXME: any patent claim is infringed by making, using, selling, offering for
-- FIXME: sale, or importing the Program or any portion of it.

-- FIXME: 11. Patents.

-- FIXME: A "contributor" is a copyright holder who authorizes use under this
-- FIXME: License of the Program or a work on which the Program is based.  The
-- FIXME: work thus licensed is called the contributor's "contributor version".

-- FIXME: A contributor's "essential patent claims" are all patent claims
-- FIXME: owned or controlled by the contributor, whether already acquired or
-- FIXME: hereafter acquired, that would be infringed by some manner, permitted
-- FIXME: by this License, of making, using, or selling its contributor version,
-- FIXME: but do not include claims that would be infringed only as a
-- FIXME: consequence of further modification of the contributor version.  For
-- FIXME: purposes of this definition, "control" includes the right to grant
-- FIXME: patent sublicenses in a manner consistent with the requirements of
-- FIXME: this License.

-- FIXME: Each contributor grants you a non-exclusive, worldwide, royalty-free
-- FIXME: patent license under the contributor's essential patent claims, to
-- FIXME: make, use, sell, offer for sale, import and otherwise run, modify and
-- FIXME: propagate the contents of its contributor version.

-- FIXME: In the following three paragraphs, a "patent license" is any express
-- FIXME: agreement or commitment, however denominated, not to enforce a patent
-- FIXME: (such as an express permission to practice a patent or covenant not to
-- FIXME: sue for patent infringement).  To "grant" such a patent license to a
-- FIXME: party means to make such an agreement or commitment not to enforce a
-- FIXME: patent against the party.

-- FIXME: If you convey a covered work, knowingly relying on a patent license,
-- FIXME: and the Corresponding Source of the work is not available for anyone
-- FIXME: to copy, free of charge and under the terms of this License, through a
-- FIXME: publicly available network server or other readily accessible means,
-- FIXME: then you must either (1) cause the Corresponding Source to be so
-- FIXME: available, or (2) arrange to deprive yourself of the benefit of the
-- FIXME: patent license for this particular work, or (3) arrange, in a manner
-- FIXME: consistent with the requirements of this License, to extend the patent
-- FIXME: license to downstream recipients.  "Knowingly relying" means you have
-- FIXME: actual knowledge that, but for the patent license, your conveying the
-- FIXME: covered work in a country, or your recipient's use of the covered work
-- FIXME: in a country, would infringe one or more identifiable patents in that
-- FIXME: country that you have reason to believe are valid.

-- FIXME: If, pursuant to or in connection with a single transaction or
-- FIXME: arrangement, you convey, or propagate by procuring conveyance of, a
-- FIXME: covered work, and grant a patent license to some of the parties
-- FIXME: receiving the covered work authorizing them to use, propagate, modify
-- FIXME: or convey a specific copy of the covered work, then the patent license
-- FIXME: you grant is automatically extended to all recipients of the covered
-- FIXME: work and works based on it.

-- FIXME: A patent license is "discriminatory" if it does not include within
-- FIXME: the scope of its coverage, prohibits the exercise of, or is
-- FIXME: conditioned on the non-exercise of one or more of the rights that are
-- FIXME: specifically granted under this License.  You may not convey a covered
-- FIXME: work if you are a party to an arrangement with a third party that is
-- FIXME: in the business of distributing software, under which you make payment
-- FIXME: to the third party based on the extent of your activity of conveying
-- FIXME: the work, and under which the third party grants, to any of the
-- FIXME: parties who would receive the covered work from you, a discriminatory
-- FIXME: patent license (a) in connection with copies of the covered work
-- FIXME: conveyed by you (or copies made from those copies), or (b) primarily
-- FIXME: for and in connection with specific products or compilations that
-- FIXME: contain the covered work, unless you entered into that arrangement,
-- FIXME: or that patent license was granted, prior to 28 March 2007.

-- FIXME: Nothing in this License shall be construed as excluding or limiting
-- FIXME: any implied license or other defenses to infringement that may
-- FIXME: otherwise be available to you under applicable patent law.

-- FIXME: 12. No Surrender of Others' Freedom.

-- FIXME: If conditions are imposed on you (whether by court order, agreement or
-- FIXME: otherwise) that contradict the conditions of this License, they do not
-- FIXME: excuse you from the conditions of this License.  If you cannot convey a
-- FIXME: covered work so as to satisfy simultaneously your obligations under this
-- FIXME: License and any other pertinent obligations, then as a consequence you may
-- FIXME: not convey it at all.  For example, if you agree to terms that obligate you
-- FIXME: to collect a royalty for further conveying from those to whom you convey
-- FIXME: the Program, the only way you could satisfy both those terms and this
-- FIXME: License would be to refrain entirely from conveying the Program.

-- FIXME: 13. Remote Network Interaction; Use with the GNU General Public License.

-- FIXME: Notwithstanding any other provision of this License, if you modify the
-- FIXME: Program, your modified version must prominently offer all users
-- FIXME: interacting with it remotely through a computer network (if your version
-- FIXME: supports such interaction) an opportunity to receive the Corresponding
-- FIXME: Source of your version by providing access to the Corresponding Source
-- FIXME: from a network server at no charge, through some standard or customary
-- FIXME: means of facilitating copying of software.  This Corresponding Source
-- FIXME: shall include the Corresponding Source for any work covered by version 3
-- FIXME: of the GNU General Public License that is incorporated pursuant to the
-- FIXME: following paragraph.

-- FIXME: Notwithstanding any other provision of this License, you have
-- FIXME: permission to link or combine any covered work with a work licensed
-- FIXME: under version 3 of the GNU General Public License into a single
-- FIXME: combined work, and to convey the resulting work.  The terms of this
-- FIXME: License will continue to apply to the part which is the covered work,
-- FIXME: but the work with which it is combined will remain governed by version
-- FIXME: 3 of the GNU General Public License.

-- FIXME: 14. Revised Versions of this License.

-- FIXME: The Free Software Foundation may publish revised and/or new versions of
-- FIXME: the GNU Affero General Public License from time to time.  Such new versions
-- FIXME: will be similar in spirit to the present version, but may differ in detail to
-- FIXME: address new problems or concerns.

-- FIXME: Each version is given a distinguishing version number.  If the
-- FIXME: Program specifies that a certain numbered version of the GNU Affero General
-- FIXME: Public License "or any later version" applies to it, you have the
-- FIXME: option of following the terms and conditions either of that numbered
-- FIXME: version or of any later version published by the Free Software
-- FIXME: Foundation.  If the Program does not specify a version number of the
-- FIXME: GNU Affero General Public License, you may choose any version ever published
-- FIXME: by the Free Software Foundation.

-- FIXME: If the Program specifies that a proxy can decide which future
-- FIXME: versions of the GNU Affero General Public License can be used, that proxy's
-- FIXME: public statement of acceptance of a version permanently authorizes you
-- FIXME: to choose that version for the Program.

-- FIXME: Later license versions may give you additional or different
-- FIXME: permissions.  However, no additional obligations are imposed on any
-- FIXME: author or copyright holder as a result of your choosing to follow a
-- FIXME: later version.

-- FIXME: 15. Disclaimer of Warranty.

-- FIXME: THERE IS NO WARRANTY FOR THE PROGRAM, TO THE EXTENT PERMITTED BY
-- FIXME: APPLICABLE LAW.  EXCEPT WHEN OTHERWISE STATED IN WRITING THE COPYRIGHT
-- FIXME: HOLDERS AND/OR OTHER PARTIES PROVIDE THE PROGRAM "AS IS" WITHOUT WARRANTY
-- FIXME: OF ANY KIND, EITHER EXPRESSED OR IMPLIED, INCLUDING, BUT NOT LIMITED TO,
-- FIXME: THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
-- FIXME: PURPOSE.  THE ENTIRE RISK AS TO THE QUALITY AND PERFORMANCE OF THE PROGRAM
-- FIXME: IS WITH YOU.  SHOULD THE PROGRAM PROVE DEFECTIVE, YOU ASSUME THE COST OF
-- FIXME: ALL NECESSARY SERVICING, REPAIR OR CORRECTION.

-- FIXME: 16. Limitation of Liability.

-- FIXME: IN NO EVENT UNLESS REQUIRED BY APPLICABLE LAW OR AGREED TO IN WRITING
-- FIXME: WILL ANY COPYRIGHT HOLDER, OR ANY OTHER PARTY WHO MODIFIES AND/OR CONVEYS
-- FIXME: THE PROGRAM AS PERMITTED ABOVE, BE LIABLE TO YOU FOR DAMAGES, INCLUDING ANY
-- FIXME: GENERAL, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING OUT OF THE
-- FIXME: USE OR INABILITY TO USE THE PROGRAM (INCLUDING BUT NOT LIMITED TO LOSS OF
-- FIXME: DATA OR DATA BEING RENDERED INACCURATE OR LOSSES SUSTAINED BY YOU OR THIRD
-- FIXME: PARTIES OR A FAILURE OF THE PROGRAM TO OPERATE WITH ANY OTHER PROGRAMS),
-- FIXME: EVEN IF SUCH HOLDER OR OTHER PARTY HAS BEEN ADVISED OF THE POSSIBILITY OF
-- FIXME: SUCH DAMAGES.

-- FIXME: 17. Interpretation of Sections 15 and 16.

-- FIXME: If the disclaimer of warranty and limitation of liability provided
-- FIXME: above cannot be given local legal effect according to their terms,
-- FIXME: reviewing courts shall apply local law that most closely approximates
-- FIXME: an absolute waiver of all civil liability in connection with the
-- FIXME: Program, unless a warranty or assumption of liability accompanies a
-- FIXME: copy of the Program in return for a fee.

-- FIXME: END OF TERMS AND CONDITIONS

-- FIXME: How to Apply These Terms to Your New Programs

-- FIXME: If you develop a new program, and you want it to be of the greatest
-- FIXME: possible use to the public, the best way to achieve this is to make it
-- FIXME: free software which everyone can redistribute and change under these terms.

-- FIXME: To do so, attach the following notices to the program.  It is safest
-- FIXME: to attach them to the start of each source file to most effectively
-- FIXME: state the exclusion of warranty; and each file should have at least
-- FIXME: the "copyright" line and a pointer to where the full notice is found.

-- FIXME: <one line to give the program's name and a brief idea of what it does.>
-- FIXME: Copyright (C) <year>  <name of author>

-- FIXME: This program is free software: you can redistribute it and/or modify
-- FIXME: it under the terms of the GNU Affero General Public License as published
-- FIXME: by the Free Software Foundation, either version 3 of the License, or
-- FIXME: (at your option) any later version.

-- FIXME: This program is distributed in the hope that it will be useful,
-- FIXME: but WITHOUT ANY WARRANTY; without even the implied warranty of
-- FIXME: MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- FIXME: GNU Affero General Public License for more details.

-- FIXME: You should have received a copy of the GNU Affero General Public License
-- FIXME: along with this program.  If not, see <https://www.gnu.org/licenses/>.

-- FIXME: Also add information on how to contact you by electronic and paper mail.

-- FIXME: If your software can interact with users remotely through a computer
-- FIXME: network, you should also make sure that it provides a way for users to
-- FIXME: get its source.  For example, if your program is a web application, its
-- FIXME: interface could display a "Source" link that leads users to an archive
-- FIXME: of the code.  There are many ways you could offer source, and different
-- FIXME: solutions will be better for different programs; see section 13 for the
-- FIXME: specific requirements.

-- FIXME: You should also get your employer (if you work as a programmer) or school,
-- FIXME: if any, to sign a "copyright disclaimer" for the program, if necessary.
-- FIXME: For more information on this, and how to apply and follow the GNU AGPL, see
-- FIXME: <https://www.gnu.org/licenses/>.
