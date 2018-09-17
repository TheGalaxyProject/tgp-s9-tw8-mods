.class final synthetic Lcom/android/systemui/-$Lambda$k4cWn4_Fe5vy8D3vFgtnjozpHDs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic -$f0:Z


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .registers 3

    iget-boolean v0, p0, Lcom/android/systemui/-$Lambda$k4cWn4_Fe5vy8D3vFgtnjozpHDs$1;->-$f0:Z

    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-static {v0, p1}, Lcom/android/systemui/SystemUIApplication$2;->lambda$-com_android_systemui_SystemUIApplication$2_10140(ZLcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method

.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/-$Lambda$k4cWn4_Fe5vy8D3vFgtnjozpHDs$1;->-$f0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/-$Lambda$k4cWn4_Fe5vy8D3vFgtnjozpHDs$1;->$m$0(Ljava/lang/Object;)V

    return-void
.end method
