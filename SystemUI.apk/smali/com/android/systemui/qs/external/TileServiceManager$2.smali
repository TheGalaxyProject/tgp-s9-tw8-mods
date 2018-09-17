.class Lcom/android/systemui/qs/external/TileServiceManager$2;
.super Ljava/lang/Object;
.source "TileServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/external/TileServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/external/TileServiceManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/external/TileServiceManager;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceManager$2;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$2;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-get1(Lcom/android/systemui/qs/external/TileServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$2;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-get0(Lcom/android/systemui/qs/external/TileServiceManager;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceManager$2;->this$0:Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {v0}, Lcom/android/systemui/qs/external/TileServiceManager;->-wrap0(Lcom/android/systemui/qs/external/TileServiceManager;)V

    :cond_17
    return-void
.end method
