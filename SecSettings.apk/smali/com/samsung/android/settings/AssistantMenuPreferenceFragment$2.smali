.class Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$2;
.super Landroid/database/ContentObserver;
.source "AssistantMenuPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;Landroid/os/Handler;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment$2;->this$0:Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;

    invoke-static {v0}, Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;->-wrap2(Lcom/samsung/android/settings/AssistantMenuPreferenceFragment;)V

    return-void
.end method
