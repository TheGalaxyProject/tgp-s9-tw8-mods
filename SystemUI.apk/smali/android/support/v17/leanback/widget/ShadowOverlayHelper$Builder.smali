.class public final Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
.super Ljava/lang/Object;
.source "ShadowOverlayHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ShadowOverlayHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private keepForegroundDrawable:Z

.field private needsOverlay:Z

.field private needsRoundedCorner:Z

.field private needsShadow:Z

.field private options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

.field private preferZOrder:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder:Z

    sget-object v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;->DEFAULT:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper;
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;-><init>()V

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay:Z

    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner:Z

    if-eqz v1, :cond_3e

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsRoundedCorner()Z

    move-result v1

    :goto_13
    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow:Z

    if-eqz v1, :cond_40

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsShadow()Z

    move-result v1

    :goto_1d
    iput-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsShadow:Z

    iget-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsRoundedCorner:Z

    if-eqz v1, :cond_28

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setupRoundedCornerRadius(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;Landroid/content/Context;)V

    :cond_28
    iget-boolean v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsShadow:Z

    if-eqz v1, :cond_59

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder:Z

    if-eqz v1, :cond_38

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsDynamicShadow()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_42

    :cond_38
    const/4 v1, 0x2

    iput v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    iput-boolean v3, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    :goto_3d
    return-object v0

    :cond_3e
    move v1, v2

    goto :goto_13

    :cond_40
    move v1, v2

    goto :goto_1d

    :cond_42
    const/4 v1, 0x3

    iput v1, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    invoke-virtual {v0, v1, p1}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->setupDynamicShadowZ(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;Landroid/content/Context;)V

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsForeground()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable:Z

    if-eqz v1, :cond_56

    :cond_54
    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    :cond_56
    iput-boolean v2, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    goto :goto_3d

    :cond_59
    iput v3, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mShadowType:I

    invoke-static {}, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->supportsForeground()Z

    move-result v1

    if-eqz v1, :cond_65

    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable:Z

    if-eqz v1, :cond_67

    :cond_65
    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsOverlay:Z

    :cond_67
    iput-boolean v2, v0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper;->mNeedsWrapper:Z

    goto :goto_3d
.end method

.method public keepForegroundDrawable(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->keepForegroundDrawable:Z

    return-object p0
.end method

.method public needsOverlay(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsOverlay:Z

    return-object p0
.end method

.method public needsRoundedCorner(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsRoundedCorner:Z

    return-object p0
.end method

.method public needsShadow(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->needsShadow:Z

    return-object p0
.end method

.method public options(Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .registers 2

    iput-object p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->options:Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Options;

    return-object p0
.end method

.method public preferZOrder(Z)Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;
    .registers 2

    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/ShadowOverlayHelper$Builder;->preferZOrder:Z

    return-object p0
.end method
