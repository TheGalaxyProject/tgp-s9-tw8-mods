.class Lcom/android/settings/deviceinfo/Status$6;
.super Ljava/lang/Object;
.source "Status.java"

# interfaces
.implements Lcom/sec/ims/ImsManager$ConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/Status;->createImsService(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;

.field final synthetic val$slotId:I


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;I)V
    .registers 3

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$6;->this$0:Lcom/android/settings/deviceinfo/Status;

    iput p2, p0, Lcom/android/settings/deviceinfo/Status$6;->val$slotId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected()V
    .registers 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$6;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-get7(Lcom/android/settings/deviceinfo/Status;)[Z

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/Status$6;->val$slotId:I

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$6;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget v4, p0, Lcom/android/settings/deviceinfo/Status$6;->val$slotId:I

    invoke-virtual {v3, v4}, Lcom/android/settings/deviceinfo/Status;->isImsRegistered(I)Z

    move-result v3

    aput-boolean v3, v1, v2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$6;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-get7(Lcom/android/settings/deviceinfo/Status;)[Z

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/Status$6;->val$slotId:I

    aget-boolean v1, v1, v2

    if-nez v1, :cond_38

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$6;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-get7(Lcom/android/settings/deviceinfo/Status;)[Z

    move-result-object v1

    iget v2, p0, Lcom/android/settings/deviceinfo/Status$6;->val$slotId:I

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$6;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/Status;->-get8(Lcom/android/settings/deviceinfo/Status;)I

    move-result v3

    rem-int/2addr v2, v3

    aget-boolean v0, v1, v2

    :goto_32
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$6;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-virtual {v1, v0}, Lcom/android/settings/deviceinfo/Status;->updateImsStatus(Z)V

    return-void

    :cond_38
    const/4 v0, 0x1

    goto :goto_32
.end method

.method public onDisconnected()V
    .registers 4

    iget-object v0, p0, Lcom/android/settings/deviceinfo/Status$6;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v0}, Lcom/android/settings/deviceinfo/Status;->-get6(Lcom/android/settings/deviceinfo/Status;)[Lcom/sec/ims/ImsManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/deviceinfo/Status$6;->val$slotId:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    return-void
.end method
