.class Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;
.super Ljava/lang/Object;
.source "WifiWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/WifiWarningDialog;->showEnableWarningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->-wrap1(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/WifiWarningDialog$1;->this$0:Lcom/samsung/android/settings/wifi/WifiWarningDialog;

    invoke-static {v0}, Lcom/samsung/android/settings/wifi/WifiWarningDialog;->-wrap0(Lcom/samsung/android/settings/wifi/WifiWarningDialog;)V

    goto :goto_8
.end method
