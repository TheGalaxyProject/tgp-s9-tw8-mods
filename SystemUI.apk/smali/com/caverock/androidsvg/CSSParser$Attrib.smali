.class public Lcom/caverock/androidsvg/CSSParser$Attrib;
.super Ljava/lang/Object;
.source "CSSParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/caverock/androidsvg/CSSParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attrib"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public operation:Lcom/caverock/androidsvg/CSSParser$AttribOp;

.field public value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/caverock/androidsvg/CSSParser$AttribOp;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser$Attrib;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/caverock/androidsvg/CSSParser$Attrib;->operation:Lcom/caverock/androidsvg/CSSParser$AttribOp;

    iput-object p3, p0, Lcom/caverock/androidsvg/CSSParser$Attrib;->value:Ljava/lang/String;

    return-void
.end method
