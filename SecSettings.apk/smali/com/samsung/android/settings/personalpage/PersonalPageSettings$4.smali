.class Lcom/samsung/android/settings/personalpage/PersonalPageSettings$4;
.super Ljava/lang/Object;
.source "PersonalPageSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->showDisclaimerPopup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/personalpage/PersonalPageSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$4;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$4;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-static {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->-get0(Lcom/samsung/android/settings/personalpage/PersonalPageSettings;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/personalpage/PersonalPageSettings$4;->this$0:Lcom/samsung/android/settings/personalpage/PersonalPageSettings;

    invoke-virtual {v0}, Lcom/samsung/android/settings/personalpage/PersonalPageSettings;->finish()V

    :cond_11
    return-void
.end method
