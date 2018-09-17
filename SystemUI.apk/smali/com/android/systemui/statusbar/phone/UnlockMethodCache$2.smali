.class Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;
.super Lcom/android/systemui/KnoxStateMonitorCallback;
.source "UnlockMethodCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/UnlockMethodCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    invoke-direct {p0}, Lcom/android/systemui/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdateContainerKioskmode()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method

.method public onUpdateLockTypeOverride()V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/UnlockMethodCache$2;->this$0:Lcom/android/systemui/statusbar/phone/UnlockMethodCache;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/UnlockMethodCache;->-wrap0(Lcom/android/systemui/statusbar/phone/UnlockMethodCache;Z)V

    return-void
.end method
