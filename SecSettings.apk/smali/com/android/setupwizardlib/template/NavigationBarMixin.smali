.class public Lcom/android/setupwizardlib/template/NavigationBarMixin;
.super Ljava/lang/Object;
.source "NavigationBarMixin.java"

# interfaces
.implements Lcom/android/setupwizardlib/template/Mixin;


# instance fields
.field private mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;


# direct methods
.method public constructor <init>(Lcom/android/setupwizardlib/TemplateLayout;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/template/NavigationBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    return-void
.end method


# virtual methods
.method public getNavigationBar()Lcom/android/setupwizardlib/view/NavigationBar;
    .registers 4

    iget-object v1, p0, Lcom/android/setupwizardlib/template/NavigationBarMixin;->mTemplateLayout:Lcom/android/setupwizardlib/TemplateLayout;

    sget v2, Lcom/android/setupwizardlib/R$id;->suw_layout_navigation_bar:I

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Lcom/android/setupwizardlib/view/NavigationBar;

    if-eqz v1, :cond_f

    check-cast v0, Lcom/android/setupwizardlib/view/NavigationBar;

    :goto_e
    return-object v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method
