/// <reference types="cypress"/>

it('google test', function(){

    cy.visit('https://docs.cypress.io/guides/overview/why-cypress')
    cy.get('.nuxt-content > :nth-child(6) > :nth-child(1) > a').viewport
})