.class Lcom/android/server/display/ColorFade$1;
.super Ljava/lang/Object;
.source "ColorFade.java"

# interfaces
.implements Lcom/android/server/display/ColorFade$NaturalSurfaceLayout$OnResolutionChangedCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/ColorFade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/ColorFade;


# direct methods
.method constructor <init>(Lcom/android/server/display/ColorFade;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResolutionChanged()V
    .registers 3

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/ColorFade$1;->this$0:Lcom/android/server/display/ColorFade;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/display/ColorFade;->-set0(Lcom/android/server/display/ColorFade;Z)Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    monitor-exit p0

    return-void

    :catchall_9
    move-exception v0

    monitor-exit p0

    throw v0
.end method
