.class Lcom/android/settings/wifi/WifiSettings$16;
.super Ljava/lang/Object;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/LinkifyUtils$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiSettings;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings$16;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings$16;->this$0:Lcom/android/settings/wifi/WifiSettings;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiSettings;->-wrap10(Lcom/android/settings/wifi/WifiSettings;)V

    return-void
.end method
