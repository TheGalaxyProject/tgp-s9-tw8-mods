.class Lcom/android/systemui/util/ShortcutManager$4;
.super Landroid/os/Handler;
.source "ShortcutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/util/ShortcutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/util/ShortcutManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/util/ShortcutManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/systemui/util/ShortcutManager$4;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_c

    :goto_5
    return-void

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/util/ShortcutManager$4;->this$0:Lcom/android/systemui/util/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/util/ShortcutManager;->-wrap2(Lcom/android/systemui/util/ShortcutManager;)V

    goto :goto_5

    :pswitch_data_c
    .packed-switch 0x16b3
        :pswitch_6
    .end packed-switch
.end method
