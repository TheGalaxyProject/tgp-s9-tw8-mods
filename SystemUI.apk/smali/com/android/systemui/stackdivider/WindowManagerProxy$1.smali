.class Lcom/android/systemui/stackdivider/WindowManagerProxy$1;
.super Ljava/lang/Object;
.source "WindowManagerProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/stackdivider/WindowManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/stackdivider/WindowManagerProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get3(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    monitor-enter v1

    const/4 v7, 0x0

    :try_start_9
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get14(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get3(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get15(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get10(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v7, v0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get16(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get9(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v7, v0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get17(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get12(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v7, v0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get18(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get11(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z
    :try_end_63
    .catchall {:try_start_9 .. :try_end_63} :catchall_10b

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    or-int/2addr v7, v0

    if-nez v7, :cond_6b

    monitor-exit v1

    return-void

    :cond_6b
    :try_start_6b
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get14(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get3(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get15(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get10(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get16(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get9(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get17(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get12(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get18(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get11(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get8(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-set0(Lcom/android/systemui/stackdivider/WindowManagerProxy;I)I
    :try_end_c1
    .catchall {:try_start_6b .. :try_end_c1} :catchall_10b

    monitor-exit v1

    :try_start_c2
    iget-object v0, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v0}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get7(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Lcom/samsung/android/multiwindow/MultiWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v1}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get14(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get15(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10e

    move-object v2, v5

    :goto_db
    iget-object v3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get16(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_115

    move-object v3, v5

    :goto_e8
    iget-object v4, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get17(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_11c

    move-object v4, v5

    :goto_f5
    iget-object v6, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v6}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get18(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_123

    :goto_101
    iget-object v6, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v6}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get13(Lcom/android/systemui/stackdivider/WindowManagerProxy;)I

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/multiwindow/MultiWindowManager;->resizeDockedStackWithDockSide(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;I)V
    :try_end_10a
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_10a} :catch_12a

    return-void

    :catchall_10b
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_10e
    :try_start_10e
    iget-object v2, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get15(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v2

    goto :goto_db

    :cond_115
    iget-object v3, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v3}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get16(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_e8

    :cond_11c
    iget-object v4, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v4}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get17(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;

    move-result-object v4

    goto :goto_f5

    :cond_123
    iget-object v5, p0, Lcom/android/systemui/stackdivider/WindowManagerProxy$1;->this$0:Lcom/android/systemui/stackdivider/WindowManagerProxy;

    invoke-static {v5}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->-get18(Lcom/android/systemui/stackdivider/WindowManagerProxy;)Landroid/graphics/Rect;
    :try_end_128
    .catch Landroid/os/RemoteException; {:try_start_10e .. :try_end_128} :catch_12a

    move-result-object v5

    goto :goto_101

    :catch_12a
    move-exception v8

    const-string/jumbo v0, "WindowManagerProxy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to resize stack: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
