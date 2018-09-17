.class Lcom/android/setupwizardlib/template/RequireScrollMixin$4;
.super Ljava/lang/Object;
.source "RequireScrollMixin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/setupwizardlib/template/RequireScrollMixin;->postScrollStateChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

.field final synthetic val$scrollNeeded:Z


# direct methods
.method constructor <init>(Lcom/android/setupwizardlib/template/RequireScrollMixin;Z)V
    .registers 3

    iput-object p1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    iput-boolean p2, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;->val$scrollNeeded:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-static {v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->-get1(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;->this$0:Lcom/android/setupwizardlib/template/RequireScrollMixin;

    invoke-static {v0}, Lcom/android/setupwizardlib/template/RequireScrollMixin;->-get1(Lcom/android/setupwizardlib/template/RequireScrollMixin;)Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/setupwizardlib/template/RequireScrollMixin$4;->val$scrollNeeded:Z

    invoke-interface {v0, v1}, Lcom/android/setupwizardlib/template/RequireScrollMixin$OnRequireScrollStateChangedListener;->onRequireScrollStateChanged(Z)V

    :cond_13
    return-void
.end method
