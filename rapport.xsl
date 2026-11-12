<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" version="3.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>rapport</title>
            </head>
            <body>
                <h1>les formations de rapport</h1>
                <xsl:for-each select="rapport/mandat">
                <h2>Num: <xsl:value-of select="@num"/></h2>
                <p>Date: <xsl:value-of select="@date"/></p>
                <p>Montant: <xsl:value-of select="@montant"/></p>
                <p>Etat: <xsl:value-of select="@etat"/></p>
                <h1>expediteur</h1>
                    <ul>
                        <li>CIN: <xsl:value-of select="expediteur/@cin"/></li>
                        <li>Nom: <xsl:value-of select="expediteur/@nom"/></li>
                        <li>Prenom: <xsl:value-of select="expediteur/@prenom"/></li>
                        <li>ville: <xsl:value-of select="expediteur/@ville"/></li>
                    </ul>
                <h1>destinataire</h1>
                    <ul>
                        <li>CIN: <xsl:value-of select="expediteur/@cin"/></li>
                        <li>Nom: <xsl:value-of select="expediteur/@nom"/></li>
                        <li>Prenom: <xsl:value-of select="expediteur/@prenom"/></li>
                        <li>ville: <xsl:value-of select="expediteur/@ville"/></li>
                    </ul>
                </xsl:for-each>
                <h3>Nombre de mandat recu: <xsl:value-of select="count(rapport/mandat[@etat='recu'])"/></h3>
                <h3>Nombre de mandat non recu: <xsl:value-of select="count(rapport/mandat[@etat='non_recu'])"/></h3>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>