.class Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;
.super Ljava/lang/Object;
.source "WifiSnsPoorConnectionActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->showSnsPoorConnectionDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const-string/jumbo v0, "WifiSnsPoorConnectionActivity"

    const-string/jumbo v1, "CLOSE pressed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity$2;->this$0:Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiSnsPoorConnectionActivity;->finish()V

    return-void
.end method
