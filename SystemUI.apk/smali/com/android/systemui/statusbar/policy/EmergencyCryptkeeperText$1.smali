.class Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "EmergencyCryptkeeperText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;)V
    .registers 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;->this$0:Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onPhoneStateChanged(I)V
    .registers 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;->this$0:Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->update()V

    return-void
.end method

.method public onRefreshCarrierInfo()V
    .registers 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText$1;->this$0:Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/EmergencyCryptkeeperText;->update()V

    return-void
.end method
