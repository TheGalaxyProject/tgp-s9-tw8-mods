.class public Lcom/android/setupwizardlib/template/RequireScrollMixin;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;,
        Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
    }
.end annotation


# instance fields
.field private mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

.field private mEverScrolledToBottom:Z

.field private final mHandler:Landroid/os/Handler;

.field private mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private mRequiringScrollToBottom:Z

.field private final mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static synthetic -get1(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;
    .registers 2

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mListener:Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    return-object v0
.end method

.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .registers 5
    .param p1    # Lcom/android/setupwizardlib/TemplateLayout;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mHandler:Landroid/os/Handler;

    iput-boolean v2, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    iput-boolean v2, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    return-void
.end method

.method private postScrollStateChange(Z)V
    .registers 4

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;

    invoke-direct {v1, p0, p1}, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;-><init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method notifyScrollabilityChange(Z)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    if-ne p1, v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_13

    iget-boolean v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    if-nez v0, :cond_12

    invoke-direct {p0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V

    iput-boolean v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    :cond_12
    :goto_12
    return-void

    :cond_13
    invoke-direct {p0, v2}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V

    iput-boolean v2, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mRequiringScrollToBottom:Z

    iput-boolean v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mEverScrolledToBottom:Z

    goto :goto_12
.end method

.method public setScrollHandlingDelegate(Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;)V
    .registers 2
    .param p1    # Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin;->mDelegate:Lcom/android/setupwizardlib/template/RequireScrollMixin$ScrollHandlingDelegate;

    return-void
.end method
