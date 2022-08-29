program ProjetoSimpleORM;

{$R *.dres}

uses
  Vcl.Forms,
  projetosimpleorm.view.pages.pedidovenda in 'src\view\projetosimpleorm.view.pages.pedidovenda.pas' {PagePedidoVenda},
  projetosimpleorm.view.pages.cliente in 'src\view\projetosimpleorm.view.pages.cliente.pas' {PageCliente},
  projetosimpleorm.view.pages.configuracoes in 'src\view\projetosimpleorm.view.pages.configuracoes.pas' {PageConfiguracoes},
  projetosimpleorm.view.pages.produto in 'src\view\projetosimpleorm.view.pages.produto.pas' {PageProduto},
  projetosimpleorm.view.utils.interfaces in 'src\assert\utils\projetosimpleorm.view.utils.interfaces.pas',
  projetosimpleorm.view.utils.impl.forms in 'src\assert\utils\impl\projetosimpleorm.view.utils.impl.forms.pas',
  projetosimpleorm.view.utils.impl.gerenciadorforms in 'src\assert\utils\impl\projetosimpleorm.view.utils.impl.gerenciadorforms.pas',
  projetosimpleorm.view.utils.impl.resourceimage in 'src\assert\utils\impl\projetosimpleorm.view.utils.impl.resourceimage.pas',
  projetosimpleorm.model.resource.interfaces in 'src\model\resource\projetosimpleorm.model.resource.interfaces.pas',
  projetosimpleorm.model.resource.impl.conexaofiredac in 'src\model\resource\impl\projetosimpleorm.model.resource.impl.conexaofiredac.pas',
  projetosimpleorm.model.resource.impl.configuracao in 'src\model\resource\impl\projetosimpleorm.model.resource.impl.configuracao.pas',
  projectsimpleorm.model.service.interfaces in 'src\model\service\projectsimpleorm.model.service.interfaces.pas',
  projectsimpleorm.model.service.impl.servicesimpleorm in 'src\model\service\impl\projectsimpleorm.model.service.impl.servicesimpleorm.pas',
  projetosimpleorm.model.resource.impl.factory in 'src\model\resource\impl\projetosimpleorm.model.resource.impl.factory.pas',
  projectsimpleorm.model.entity.cliente in 'src\model\entity\projectsimpleorm.model.entity.cliente.pas',
  projectsimpleorm.model.entity.endereco in 'src\model\entity\projectsimpleorm.model.entity.endereco.pas',
  projectsimpleorm.model.entity.pedido in 'src\model\entity\projectsimpleorm.model.entity.pedido.pas',
  projectsimpleorm.model.entity.pedidoitens in 'src\model\entity\projectsimpleorm.model.entity.pedidoitens.pas',
  projectsimpleorm.model.entity.pessoa in 'src\model\entity\projectsimpleorm.model.entity.pessoa.pas',
  projectsimpleorm.model.entity.produto in 'src\model\entity\projectsimpleorm.model.entity.produto.pas',
  projectsimpleorm.controller.dto.interfaces in 'src\controller\dto\projectsimpleorm.controller.dto.interfaces.pas',
  projectsimpleorm.controller.dto.impl.endereco in 'src\controller\dto\impl\projectsimpleorm.controller.dto.impl.endereco.pas',
  projectsimpleorm.controller.dto.impl.cliente in 'src\controller\dto\impl\projectsimpleorm.controller.dto.impl.cliente.pas',
  projectsimpleorm.controller.dto.impl.pedido in 'src\controller\dto\impl\projectsimpleorm.controller.dto.impl.pedido.pas',
  projectsimpleorm.controller.dto.impl.pedidoItens in 'src\controller\dto\impl\projectsimpleorm.controller.dto.impl.pedidoItens.pas',
  projectsimpleorm.controller.dto.impl.pessoa in 'src\controller\dto\impl\projectsimpleorm.controller.dto.impl.pessoa.pas',
  projectsimpleorm.controller.dto.impl.produto in 'src\controller\dto\impl\projectsimpleorm.controller.dto.impl.produto.pas',
  projectsimpleorm.controller.interfaces in 'src\controller\projectsimpleorm.controller.interfaces.pas',
  projectsimpleorm.controller.impl.controller in 'src\controller\impl\projectsimpleorm.controller.impl.controller.pas';

{$R *.res}

begin
  Application.Initialize;
  ReportMemoryLeaksOnShutdown := True;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPagePedidoVenda, PagePedidoVenda);
  Application.Run;
end.
