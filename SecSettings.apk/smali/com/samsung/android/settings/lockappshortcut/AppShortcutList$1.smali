.class Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$1;
.super Landroid/os/Handler;
.source "AppShortcutList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$1;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_14

    :goto_5
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$1;->this$0:Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;

    invoke-static {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;->-get3(Lcom/samsung/android/settings/lockappshortcut/AppShortcutList;)Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/settings/lockappshortcut/AppShortcutList$LoadAppListTask;->add()V

    goto :goto_5

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_9
    .end packed-switch
.end method
