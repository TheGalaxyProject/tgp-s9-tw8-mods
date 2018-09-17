.class abstract Lcom/android/server/am/ConfigurationContainer;
.super Ljava/lang/Object;
.source "ConfigurationContainer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Lcom/android/server/am/ConfigurationContainer;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mFullConfiguration:Landroid/content/res/Configuration;

.field private mMergedOverrideConfiguration:Landroid/content/res/Configuration;

.field private mOverrideConfiguration:Landroid/content/res/Configuration;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-void
.end method

.method private onMergedOverrideConfigurationChanged()V
    .registers 6

    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v2

    if-eqz v2, :cond_28

    iget-object v3, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2}, Lcom/android/server/am/ConfigurationContainer;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    :goto_16
    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    :goto_1c
    if-ltz v1, :cond_30

    invoke-virtual {p0, v1}, Lcom/android/server/am/ConfigurationContainer;->getChildAt(I)Lcom/android/server/am/ConfigurationContainer;

    move-result-object v0

    invoke-direct {v0}, Lcom/android/server/am/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1c

    :cond_28
    iget-object v3, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v3, v4}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    goto :goto_16

    :cond_30
    return-void
.end method


# virtual methods
.method protected abstract getChildAt(I)Lcom/android/server/am/ConfigurationContainer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method protected abstract getChildCount()I
.end method

.method getConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getMergedOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mMergedOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method getOverrideConfiguration()Landroid/content/res/Configuration;
    .registers 2

    iget-object v0, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    return-object v0
.end method

.method protected abstract getParent()Lcom/android/server/am/ConfigurationContainer;
.end method

.method onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 6

    iget-object v2, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_12
    if-ltz v1, :cond_20

    invoke-virtual {p0, v1}, Lcom/android/server/am/ConfigurationContainer;->getChildAt(I)Lcom/android/server/am/ConfigurationContainer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_12

    :cond_20
    return-void
.end method

.method onOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 4

    iget-object v1, p0, Lcom/android/server/am/ConfigurationContainer;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/android/server/am/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    :goto_f
    invoke-virtual {p0, v1}, Lcom/android/server/am/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    return-void

    :cond_16
    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    goto :goto_f
.end method

.method onParentChanged()V
    .registers 3

    invoke-virtual {p0}, Lcom/android/server/am/ConfigurationContainer;->getParent()Lcom/android/server/am/ConfigurationContainer;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v1, v0, Lcom/android/server/am/ConfigurationContainer;->mFullConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Lcom/android/server/am/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/server/am/ConfigurationContainer;->onMergedOverrideConfigurationChanged()V

    :cond_e
    return-void
.end method
