.class Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;
.super Ljava/lang/Object;
.source "WifiSettingsGuider.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/guide/WifiSettingsGuider;->initHelpDialogContent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-static {v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-get2(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-static {v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->-get2(Lcom/samsung/android/settings/guide/WifiSettingsGuider;)Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider$OnCloseHelpDialogListener;->OnCloseHelpDialog()V

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/settings/guide/WifiSettingsGuider$7;->this$0:Lcom/samsung/android/settings/guide/WifiSettingsGuider;

    invoke-virtual {v0}, Lcom/samsung/android/settings/guide/WifiSettingsGuider;->dismissHelpDialog()V

    return-void
.end method
