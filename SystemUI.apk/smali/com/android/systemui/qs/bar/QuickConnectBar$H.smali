.class final Lcom/android/systemui/qs/bar/QuickConnectBar$H;
.super Landroid/os/Handler;
.source "QuickConnectBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/bar/QuickConnectBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# static fields
.field private static final MSG_UPDATE_ITEMS:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/bar/QuickConnectBar;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/bar/QuickConnectBar;Lcom/android/systemui/qs/bar/QuickConnectBar$H;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/bar/QuickConnectBar$H;-><init>(Lcom/android/systemui/qs/bar/QuickConnectBar;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_10

    :goto_5
    return-void

    :pswitch_6
    iget-object v1, p0, Lcom/android/systemui/qs/bar/QuickConnectBar$H;->this$0:Lcom/android/systemui/qs/bar/QuickConnectBar;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/qs/bar/QuickConnectBar$State;

    invoke-static {v1, v0}, Lcom/android/systemui/qs/bar/QuickConnectBar;->-wrap0(Lcom/android/systemui/qs/bar/QuickConnectBar;Lcom/android/systemui/qs/bar/QuickConnectBar$State;)V

    goto :goto_5

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
