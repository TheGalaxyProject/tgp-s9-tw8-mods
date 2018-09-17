.class public Lcom/caverock/androidsvg/PreserveAspectRatio;
.super Ljava/lang/Object;
.source "PreserveAspectRatio.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;,
        Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
    }
.end annotation


# static fields
.field public static final BOTTOM:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final END:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final FULLSCREEN:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final FULLSCREEN_START:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final START:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final TOP:Lcom/caverock/androidsvg/PreserveAspectRatio;

.field public static final UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;


# instance fields
.field private alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

.field private scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    invoke-direct {v0, v2, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->UNSCALED:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->None:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->STRETCH:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->LETTERBOX:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->START:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMaxYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->END:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->TOP:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMax:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Meet:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->BOTTOM:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMidYMid:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->FULLSCREEN:Lcom/caverock/androidsvg/PreserveAspectRatio;

    new-instance v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    sget-object v1, Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;->XMinYMin:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    sget-object v2, Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;->Slice:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    invoke-direct {v0, v1, v2}, Lcom/caverock/androidsvg/PreserveAspectRatio;-><init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V

    sput-object v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->FULLSCREEN_START:Lcom/caverock/androidsvg/PreserveAspectRatio;

    return-void
.end method

.method public constructor <init>(Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    iput-object p2, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-eq p0, p1, :cond_20

    if-eqz p1, :cond_21

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_22

    move-object v0, p1

    check-cast v0, Lcom/caverock/androidsvg/PreserveAspectRatio;

    iget-object v1, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    iget-object v2, v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    if-ne v1, v2, :cond_23

    iget-object v1, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    iget-object v2, v0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    if-ne v1, v2, :cond_24

    return v4

    :cond_20
    return v4

    :cond_21
    return v3

    :cond_22
    return v3

    :cond_23
    return v3

    :cond_24
    return v3
.end method

.method public getAlignment()Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->alignment:Lcom/caverock/androidsvg/PreserveAspectRatio$Alignment;

    return-object v0
.end method

.method public getScale()Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;
    .registers 2

    iget-object v0, p0, Lcom/caverock/androidsvg/PreserveAspectRatio;->scale:Lcom/caverock/androidsvg/PreserveAspectRatio$Scale;

    return-object v0
.end method
