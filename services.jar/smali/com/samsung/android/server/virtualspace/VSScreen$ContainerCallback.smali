.class Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;
.super Landroid/app/IActivityContainerCallback$Stub;
.source "VSScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/server/virtualspace/VSScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContainerCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/server/virtualspace/VSScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/server/virtualspace/VSScreen;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    invoke-direct {p0}, Landroid/app/IActivityContainerCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAllActivitiesComplete(Landroid/os/IBinder;)V
    .registers 4

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    const-string/jumbo v1, "ContainerCallback: onAllActivitiesComplete"

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->-wrap1(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public setVisible(Landroid/os/IBinder;Z)V
    .registers 6

    sget-boolean v0, Lcom/samsung/android/server/virtualspace/VSManagerService;->DEBUG:Z

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/samsung/android/server/virtualspace/VSScreen$ContainerCallback;->this$0:Lcom/samsung/android/server/virtualspace/VSScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ContainerCallback: setVisible "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/server/virtualspace/VSScreen;->-wrap1(Lcom/samsung/android/server/virtualspace/VSScreen;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method
