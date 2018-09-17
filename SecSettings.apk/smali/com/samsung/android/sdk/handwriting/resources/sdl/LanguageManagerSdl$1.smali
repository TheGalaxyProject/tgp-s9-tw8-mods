.class Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl$1;
.super Ljava/lang/Object;
.source "LanguageManagerSdl.java"

# interfaces
.implements Lcom/samsung/android/handwriting/resources/SemLanguageManager$OnUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;->update(Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;

.field final synthetic val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;)V
    .registers 3

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl$1;->this$0:Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUpdate(Z)V
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    if-nez v1, :cond_6

    :goto_5
    return-void

    :cond_6
    iget-object v1, p0, Lcom/samsung/android/sdk/handwriting/resources/sdl/LanguageManagerSdl$1;->val$listener:Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;

    if-nez p1, :cond_b

    const/4 v0, 0x1

    :cond_b
    invoke-interface {v1, v0}, Lcom/samsung/android/sdk/handwriting/resources/interfaces/LanguageManagerInterface$OnUpdateListener;->onComplete(I)V

    goto :goto_5
.end method
