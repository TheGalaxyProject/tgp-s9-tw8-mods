.class Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen$1;
.super Ljava/lang/Object;
.source "NfcListenStatusChange.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;)V
    .registers 2

    iput-object p1, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen$1;->this$1:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen$1;->this$1:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;

    iget-object v0, v0, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange$NfcTypeScreen;->this$0:Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;

    invoke-static {v0}, Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;->-wrap0(Lcom/samsung/android/settings/nfc/osaifu/NfcListenStatusChange;)V

    return-void
.end method
