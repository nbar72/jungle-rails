describe('Jungle application', () => {
  it("There is products on the page", () => {
    cy.get(".products article").should("be.visible");
  });
  
  it("There is 12 products on the page", () => {
    cy.get(".products article").should("have.length", 12);
  });
})