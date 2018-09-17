.class Lcom/samsung/accessory/manager/SAccessoryManager$3;
.super Landroid/os/UEventObserver;
.source "SAccessoryManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/SAccessoryManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/accessory/manager/SAccessoryManager;


# direct methods
.method constructor <init>(Lcom/samsung/accessory/manager/SAccessoryManager;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .registers 9

    :try_start_0
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "UEventObserver, event : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    invoke-static {v4}, Lcom/samsung/accessory/manager/SAccessoryManager;->-get2(Lcom/samsung/accessory/manager/SAccessoryManager;)Z

    move-result v4

    if-nez v4, :cond_3f

    const-string/jumbo v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_4a

    const-string/jumbo v4, "SWITCH_STATE"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_4a

    :cond_3f
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "uEvent switch state is not related with usb auth or Factory binary"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4a
    const/4 v1, 0x0

    const-string/jumbo v4, "USBPD_IDS"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_62

    const-string/jumbo v4, "USBPD_IDS"

    invoke-virtual {p1, v4}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    :cond_62
    const-string/jumbo v4, "b001b7ff"

    invoke-static {v4}, Lcom/samsung/accessory/manager/SAccessoryManager;->-wrap0(Ljava/lang/String;)[B

    move-result-object v3

    if-eqz v1, :cond_ae

    array-length v4, v1

    const/4 v5, 0x2

    if-ne v4, v5, :cond_ae

    const/4 v4, 0x0

    aget-object v4, v1, v4

    const-string/jumbo v5, "04e8"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_ae

    const/4 v4, 0x1

    aget-object v4, v1, v4

    invoke-static {v4}, Lcom/samsung/accessory/manager/SAccessoryManager;->-wrap0(Ljava/lang/String;)[B

    move-result-object v2

    array-length v4, v2

    const/4 v5, 0x4

    if-ne v4, v5, :cond_af

    const/4 v4, 0x0

    aget-byte v4, v2, v4

    const/4 v5, 0x0

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_af

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    const/4 v5, 0x1

    aget-byte v5, v3, v5

    if-lt v4, v5, :cond_af

    const/4 v4, 0x1

    aget-byte v4, v2, v4

    const/4 v5, 0x5

    aget-byte v5, v3, v5

    if-gt v4, v5, :cond_af

    iget-object v4, p0, Lcom/samsung/accessory/manager/SAccessoryManager$3;->this$0:Lcom/samsung/accessory/manager/SAccessoryManager;

    const-string/jumbo v5, "SWITCH_STATE"

    invoke-virtual {p1, v5}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v4, v5}, Lcom/samsung/accessory/manager/SAccessoryManager;->-wrap1(Lcom/samsung/accessory/manager/SAccessoryManager;I)V

    :cond_ae
    :goto_ae
    return-void

    :cond_af
    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "UEventObserver, event : "

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b9
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_b9} :catch_ba

    goto :goto_ae

    :catch_ba
    move-exception v0

    invoke-static {}, Lcom/samsung/accessory/manager/SAccessoryManager;->-get0()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Could not parse switch state from event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ae
.end method
