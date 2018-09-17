.class public Lcom/android/server/enterprise/general/TypefaceParser;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "TypefaceParser.java"


# static fields
.field private static final ATTR_NAME:Ljava/lang/String; = "displayname"

.field private static final NODE_DROIDNAME:Ljava/lang/String; = "droidname"

.field private static final NODE_FILE:Ljava/lang/String; = "file"

.field private static final NODE_FILENAME:Ljava/lang/String; = "filename"

.field private static final NODE_FONT:Ljava/lang/String; = "font"

.field private static final NODE_MONOSPACE:Ljava/lang/String; = "monospace"

.field private static final NODE_SANS:Ljava/lang/String; = "sans"

.field private static final NODE_SERIF:Ljava/lang/String; = "serif"


# instance fields
.field private in_droidname:Z

.field private in_file:Z

.field private in_filename:Z

.field private in_font:Z

.field private in_monospace:Z

.field private in_sans:Z

.field private in_serif:Z

.field private mFont:Lcom/android/server/enterprise/general/Typeface;

.field private mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    iput-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    iput-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iput-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 6

    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFile;->setFileName(Ljava/lang/String;)V

    :cond_e
    :goto_e
    return-void

    :cond_f
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/general/TypefaceFile;->setDroidName(Ljava/lang/String;)V

    goto :goto_e
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v1, 0x0

    const-string/jumbo v0, "font"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    :cond_c
    :goto_c
    return-void

    :cond_d
    const-string/jumbo v0, "sans"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    goto :goto_c

    :cond_19
    const-string/jumbo v0, "serif"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    goto :goto_c

    :cond_25
    const-string/jumbo v0, "monospace"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    goto :goto_c

    :cond_31
    const-string/jumbo v0, "file"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSansFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_4e
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    if-eqz v0, :cond_5c

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mSerifFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_5c
    iget-boolean v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    iget-object v0, v0, Lcom/android/server/enterprise/general/Typeface;->mMonospaceFonts:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    :cond_6a
    const-string/jumbo v0, "filename"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    goto :goto_c

    :cond_76
    const-string/jumbo v0, "droidname"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iput-boolean v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    goto :goto_c
.end method

.method public getParsedData()Lcom/android/server/enterprise/general/Typeface;
    .registers 2

    iget-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    return-object v0
.end method

.method public startDocument()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/enterprise/general/Typeface;

    invoke-direct {v0}, Lcom/android/server/enterprise/general/Typeface;-><init>()V

    iput-object v0, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v2, 0x1

    const-string/jumbo v1, "font"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_font:Z

    const-string/jumbo v1, "displayname"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFont:Lcom/android/server/enterprise/general/Typeface;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/general/Typeface;->setName(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void

    :cond_19
    const-string/jumbo v1, "sans"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_sans:Z

    goto :goto_18

    :cond_25
    const-string/jumbo v1, "serif"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_serif:Z

    goto :goto_18

    :cond_31
    const-string/jumbo v1, "monospace"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_monospace:Z

    goto :goto_18

    :cond_3d
    const-string/jumbo v1, "file"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_50

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_file:Z

    new-instance v1, Lcom/android/server/enterprise/general/TypefaceFile;

    invoke-direct {v1}, Lcom/android/server/enterprise/general/TypefaceFile;-><init>()V

    iput-object v1, p0, Lcom/android/server/enterprise/general/TypefaceParser;->mFontFile:Lcom/android/server/enterprise/general/TypefaceFile;

    goto :goto_18

    :cond_50
    const-string/jumbo v1, "filename"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5c

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_filename:Z

    goto :goto_18

    :cond_5c
    const-string/jumbo v1, "droidname"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iput-boolean v2, p0, Lcom/android/server/enterprise/general/TypefaceParser;->in_droidname:Z

    goto :goto_18
.end method
