.class Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;
.super Landroid/os/Handler;
.source "KeyguardMotionWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

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
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v1, v0}, Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;->-wrap2(Lcom/android/systemui/wallpaper/KeyguardMotionWallpaper;[F)V

    goto :goto_5

    :pswitch_data_10
    .packed-switch 0x1
        :pswitch_6
    .end packed-switch
.end method
