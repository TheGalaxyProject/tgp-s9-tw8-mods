.class Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;
.super Ljava/lang/Object;
.source "RegisterFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/RegisterFingerprint$4;->onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/RegisterFingerprint$4;)V
    .registers 2

    iput-object p1, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/RegisterFingerprint$4$1;->this$1:Lcom/android/settings/fingerprint/RegisterFingerprint$4;

    iget-object v0, v0, Lcom/android/settings/fingerprint/RegisterFingerprint$4;->this$0:Lcom/android/settings/fingerprint/RegisterFingerprint;

    invoke-static {v0}, Lcom/android/settings/fingerprint/RegisterFingerprint;->-wrap2(Lcom/android/settings/fingerprint/RegisterFingerprint;)V

    return-void
.end method
