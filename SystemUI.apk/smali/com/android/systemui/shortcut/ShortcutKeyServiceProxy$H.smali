.class final Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;
.super Landroid/os/Handler;
.source "ShortcutKeyServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;


# direct methods
.method private constructor <init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;->this$0:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;-><init>(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 8

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_18

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$H;->this$0:Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;

    invoke-static {v1}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;->-get0(Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy;)Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;

    move-result-object v2

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lcom/android/systemui/shortcut/ShortcutKeyServiceProxy$Callbacks;->onShortcutKeyPressed(J)V

    goto :goto_5

    :pswitch_data_18
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
