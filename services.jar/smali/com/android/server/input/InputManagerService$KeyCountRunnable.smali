.class Lcom/android/server/input/InputManagerService$KeyCountRunnable;
.super Ljava/lang/Object;
.source "InputManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyCountRunnable"
.end annotation


# instance fields
.field private mKeyCode:I

.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/input/InputManagerService;)V
    .registers 3

    iput-object p1, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->this$0:Lcom/android/server/input/InputManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->mKeyCode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/input/InputManagerService;Lcom/android/server/input/InputManagerService$KeyCountRunnable;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/server/input/InputManagerService$KeyCountRunnable;-><init>(Lcom/android/server/input/InputManagerService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mBackgroundKeyCountService:Lcom/android/server/input/BackgroundKeyCountService;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, v0, Lcom/android/server/input/InputManagerService;->mBackgroundKeyCountService:Lcom/android/server/input/BackgroundKeyCountService;

    iget v1, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->mKeyCode:I

    invoke-virtual {v0, v1}, Lcom/android/server/input/BackgroundKeyCountService;->increaseCount(I)V

    :cond_f
    return-void
.end method

.method public setKey(I)V
    .registers 2

    iput p1, p0, Lcom/android/server/input/InputManagerService$KeyCountRunnable;->mKeyCode:I

    return-void
.end method
