<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema">
    <xsl:output method="xml" indent="yes" omit-xml-declaration="yes" />
    <xsl:param name="uuid" />

    <xsl:template match="/">
        <count>2</count>
        <next />
        <previous />
        <results>
            <item>
                <_links>
                    <self>
                        <xsl:value-of
                            select="concat('https://taakapplicatie.tld/taaktypes/xxxx-yyyy-zzz',$uuid)" />
                    </self>
                </_links>
                <uuid>
                    <xsl:value-of select="$uuid" />
                </uuid>
                <omschrijving>Ophalen grofvuil groot</omschrijving>
                <toelichting>Grofvuil wordt opgehaald met een knijpkraan. Geschikt voor bijvoorbeeld
        grote kasten, koelkast, wasmachine.</toelichting>
                <additionele_informatie>~</additionele_informatie>
            </item>
            <item>
                <_links>
                    <self>
                        <xsl:value-of
                            select="concat('https://taakapplicatie.tld/taaktypes/xxxx-yyyy-zzz',$uuid)" />
                    </self>
                </_links>
                <uuid>
                    <xsl:value-of select="$uuid" />
                </uuid>
                <omschrijving>Ophalen grofvuil groot</omschrijving>
                <toelichting>Grofvuil wordt opgehaald met een knijpkraan. Geschikt voor bijvoorbeeld
        grote kasten, koelkast, wasmachine.</toelichting>
                <additionele_informatie>~</additionele_informatie>
            </item>
        </results>
    </xsl:template>
</xsl:stylesheet>