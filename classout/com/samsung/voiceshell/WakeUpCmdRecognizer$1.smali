.class Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;
.super Landroid/os/Handler;
.source "WakeUpCmdRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/voiceshell/WakeUpCmdRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;


# direct methods
.method constructor <init>(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)V
    .registers 2
    .parameter

    .prologue
    .line 135
    iput-object p1, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 7
    .parameter "msg"

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "job"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 139
    .local v2, job:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "Enroll_Count"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 140
    .local v1, enroll_cnt:I
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "EnrollCheck_Count"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 142
    .local v0, enroll_check_cnt:I
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$000(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 144
    iget-object v3, p0, Lcom/samsung/voiceshell/WakeUpCmdRecognizer$1;->this$0:Lcom/samsung/voiceshell/WakeUpCmdRecognizer;

    #getter for: Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->mResultListener:Lcom/samsung/voiceshell/VoiceEngineResultListener;
    invoke-static {v3}, Lcom/samsung/voiceshell/WakeUpCmdRecognizer;->access$000(Lcom/samsung/voiceshell/WakeUpCmdRecognizer;)Lcom/samsung/voiceshell/VoiceEngineResultListener;

    move-result-object v3

    invoke-interface {v3, v2, v1, v0}, Lcom/samsung/voiceshell/VoiceEngineResultListener;->OnEnrollResult(III)V

    .line 146
    :cond_2f
    return-void
.end method
