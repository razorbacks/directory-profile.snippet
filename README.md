# directory profile snippet
* For use with [OmniUpdate Campus CMS](http://omniupdate.com/products/oucampus/).
* Requires [Bootstrap](http://getbootstrap.com/).

## In Editor:  
![popover screenshot](https://raw.githubusercontent.com/admonkey/directory-profile.snippet/master/snippet.screenshot.png)

## Published Page:  
![snippet screenshot](https://raw.githubusercontent.com/admonkey/directory-profile.snippet/master/published.screenshot.png)

## Getting Started
* snippets are site-specific, so you will need to repeat this process for each site. 
  [more info](http://support.omniupdate.com/oucampus10/reusable-content/snippets/snippets-setup.html)
* upload `directory-profile.inc.html` to your snippets folder, this is usually in `/_resources/snippets`
* upload `directory-profile.table-transform.xsl` to your folder with `common.xsl`, usually found in `/_resources/xsl`
  * keep in mind this may only need to be uploaded to one site if you are pulling xsl files for all sites from a common source. 
    You can see if this is the case at the top of the source in one of your .pcf files and note the `site` attribute.
    For instance, `<?pcf-stylesheet path="/xsl/interior.xsl" site="templates" title="Interior Page" extension="php"?>`
    shows that this .pcf file is pulling `interior.xsl` from the site called "templates"
* in your `common.xsl`, after the opening `<xsl:stylesheet>` tag, add this line: `<xsl:import href="directory-profile.table-transform.xsl"/>`
* goto <kbd>content</kbd> > <kbd>snippets</kbd>
* choose a snippet category, or create a new one
* click <kbd>+new</kbd>
* give it a name, like "directory-profile"
* browse to the file location where the snippet is stored
  * remember snippets must be loaded in the staging (OU Campus) server's file system for each and every site,
  even if you are including the xsl from a common site.
  I'm have no idea why it allows you to browse and select snippets from other sites,
  since it won't work when you try to load and actually use them - this seems like a bug in OU Campus to me,
  but maybe it's just a bug with our particular configuration.
* save, and now the snippet is available in the WYSIWYG toolbar or gadget sidebar
