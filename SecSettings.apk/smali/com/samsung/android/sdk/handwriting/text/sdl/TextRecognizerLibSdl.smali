.class public Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;
.super Ljava/lang/Object;
.source "TextRecognizerLibSdl.java"


# instance fields
.field private mListener:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;

.field private mRecognizer:Lcom/samsung/android/handwriting/text/SemTextRecognizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;->mRecognizer:Lcom/samsung/android/handwriting/text/SemTextRecognizer;

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;->mListener:Lcom/samsung/android/sdk/handwriting/text/interfaces/TextRecognizerInterface$EventListener;

    new-instance v0, Lcom/samsung/android/handwriting/text/SemTextRecognizer;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/handwriting/text/SemTextRecognizer;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;->mRecognizer:Lcom/samsung/android/handwriting/text/SemTextRecognizer;

    return-void
.end method


# virtual methods
.method public dispose()V
    .registers 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;->mRecognizer:Lcom/samsung/android/handwriting/text/SemTextRecognizer;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/text/sdl/TextRecognizerLibSdl;->mRecognizer:Lcom/samsung/android/handwriting/text/SemTextRecognizer;

    invoke-virtual {v0}, Lcom/samsung/android/handwriting/text/SemTextRecognizer;->close()V

    goto :goto_4
.end method
