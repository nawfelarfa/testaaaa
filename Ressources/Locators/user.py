#user ajout
userplus= "xpath://button[@type='button' and contains(concat(' ', @class, ' '), ' oxd-button ') and contains(concat(' ', @class, ' '), ' oxd-button--medium ') and contains(concat(' ', @class, ' '), ' oxd-button--secondary ')]"
userrole="xpath://div[@class='oxd-select-text--after']"
employername="xpath://input[@placeholder='Type for hints...']"
userstatut="xpath://form[@class='oxd-form']//div[@class='oxd-select-text-input'][contains(text(), '-- Select --')]"
username="xpath://input[@class='oxd-input oxd-input--active' and @autocomplete='off']"
userpassword="xpath://label[text()='Password']/following::input[@type='password']"
userconfirmpassword="xpath://label[text()='Confirm Password']/following::input[@type='password'][1]"
usercancel="xpath://button[@type='button' and @class='oxd-button oxd-button--medium oxd-button--ghost' and text()=' Cancel ']"
usersave="xpath://button[@type='submit' and @class='oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space']"

#recherche
tabresultat= 'xpath://*[@class="oxd-table"]'
usereset='Xpath://button[@class="oxd-button oxd-button--medium oxd-button--ghost" and @type="button"]'
usersearch='xpath://button[@class="oxd-button oxd-button--medium oxd-button--secondary orangehrm-left-space" and @type="submit"]'
namerecherche='xpath://*[@class="oxd-form-row"]//*[@class="oxd-input oxd-input--active"]'
nameuserrole='xpath://*[@class="oxd-select-wrapper"]//*[@class="oxd-select-text oxd-select-text--active"]//*[@class=oxd-select-text-input]'
nameemployer='xpath://*[@class="oxd-autocomplete-text-input oxd-autocomplete-text-input--active"]//input[@placeholder="Type for hints..."]'
statutrecherche='xpath:'
usernameresultat='xpath://*[@class="oxd-table-body"]//*[@class="oxd-table-card"]//*[@class="oxd-table-cell oxd-padding-cell"][2]'
userroleresultat='xpath://*[@class="oxd-table-body"]//*[@class="oxd-table-card"]//*[@class="oxd-table-cell oxd-padding-cell"][3]'
employerresultat='xpath://*[@class="oxd-table-body"]//*[@class="oxd-table-card"]//*[@class="oxd-table-cell oxd-padding-cell"][4]'
staturesultat='xpath://*[@class="oxd-table-body"]//*[@class="oxd-table-card"]//*[@class="oxd-table-cell oxd-padding-cell"][5]'
#supression
userdel="xpath://button[@type='button' and @class='oxd-icon-button oxd-table-cell-action-space']//*[@class='oxd-icon bi-trash']"
confirmationsupr=  "xpath ://button[@type='button' and @class='oxd-button oxd-button--medium oxd-button--label-danger orangehrm-button-margin']"
#mise a jour
maj="xpath:"
